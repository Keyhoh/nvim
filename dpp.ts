import {
    BaseConfig,
    ConfigReturn,
    ContextBuilder,
    Dpp,
    Plugin,
} from "https://deno.land/x/dpp_vim@v0.3.0/types.ts";
import { Denops, fn } from "https://deno.land/x/dpp_vim@v0.3.0/deps.ts";

type Toml = {
    hooks_file?: string;
    ftplugins?: Record<string, string>;
    plugins?: Plugin[];
};

type LazyMakeStateResult = {
    plugins: Plugin[];
    stateLines: string[];
};

const basePath = "~/.config/nvim";
const TOML_PLUGINS: string[] = [`${basePath}/plugins.toml`];
const LAZY_TOML_PLUGINS: string[] = [];

export class Config extends BaseConfig {
    override async config(args: {
        denops: Denops;
        contextBuilder: ContextBuilder;
        basePath: string;
        dpp: Dpp;
    }) {
        args.contextBuilder.setGlobal({
            protocols: ["git"],
        });

        const [context, options] = await args.contextBuilder.get(args.denops);
        const load = (paths: string[], lazy: boolean) =>
            Promise.all(paths.map(async (path) =>
                args.dpp.extAction(
                    args.denops,
                    context,
                    options,
                    "toml",
                    "load",
                    {
                        path: await fn.expand(
                            args.denops,
                            path,
                        ),
                        options: {
                            lazy,
                        },
                    },
                ) as Toml
            ));

        const tomlPlugins = await load(TOML_PLUGINS, false);
        const lazyTomlPlugins = await load(LAZY_TOML_PLUGINS, true);

        const { plugins, ftplugins, hooksFiles } = [
            ...tomlPlugins,
            ...lazyTomlPlugins,
        ].filter((plugin) => plugin !== undefined)
            .reduce<ConfigReturn>((prev, curr) => {
                if (curr.plugins) {
                    prev.plugins.push(...curr.plugins);
                }
                if (curr.ftplugins) {
                    for (const filetype of Object.keys(curr.ftplugins)) {
                        if (prev.ftplugins![filetype]) {
                            prev.ftplugins![filetype] += `\n${
                                curr.ftplugins[filetype]
                            }`;
                        } else {
                            prev.ftplugins![filetype] =
                                curr.ftplugins[filetype];
                        }
                    }
                }
                if (curr.hooks_file) {
                    prev.hooksFiles!.push(curr.hooks_file);
                }
                return prev;
            }, {
                plugins: [],
                ftplugins: {},
                hooksFiles: [],
            });

        const lazyMakeStateResult = await args.dpp.extAction(
            args.denops,
            context,
            options,
            "lazy",
            "makeState",
            {
                plugins,
            },
        ) as LazyMakeStateResult;

        return {
            ...lazyMakeStateResult,
            checkFiles: [],
            ftplugins,
            hooksFiles,
            multipleHooks: [],
        };
    }
}
