/** @type {import('eslint').Linter.Config} */
const config = {
  root: true,
  extends: [
    "eslint:recommended",
    "plugin:toml/recommended",
    "plugin:jsonc/prettier",
    "plugin:editorconfig/all",
    "prettier",
  ],
  plugins: ["@typescript-eslint", "editorconfig"],
  rules: {
    "toml/indent": ["error", 2, { subTables: 1, keyValuePairs: 1 }],
    "toml/no-space-dots": "error",
    "toml/padding-line-between-tables": "error",
    "toml/quoted-keys": "error",
    "toml/array-bracket-newline": "error",
    "toml/array-element-newline": ["error", "consistent"],
    "toml/comma-style": "error",
    "toml/inline-table-curly-spacing": "error",
    "toml/key-spacing": "error",
    "toml/spaced-comment": ["error", "always"],
    "toml/table-bracket-spacing": ["error", "always"],
  },
  env: {
    es2021: true,
    node: true,
  },
  overrides: [
    {
      files: "*.toml",
      parser: "toml-eslint-parser",
    },
    {
      files: ["*.json", "*.json5", "*.jsonc", "*.mcmeta"],
      parser: "jsonc-eslint-parser",
    },
    {
      files: ["minecraft/**/*.json", "minecraft/**/*.mcmeta"],
      rules: {
        "no-multiple-empty-lines": ["error", { max: 0 }],
      },
    },
    {
      files: ["minecraft/config/incontrol/loot.json"],
      rules: {
        "jsonc/sort-keys": [
          "error",
          {
            pathPattern: ".*",
            order: [
              "mob",
              "player",
              "item",
              "gamestage",
              "random",
              "itemcount",
            ],
          },
        ],
      },
    },
    {
      files: ["minecraft/config/incontrol/spawn.json"],
      rules: {
        "jsonc/sort-keys": [
          "error",
          {
            pathPattern: ".*",
            order: [
              "mob",
              "mod",
              "dimension",
              "block",
              "healthmultiply",
              "damagemultiply",
              "speedmultiply",
              "damageadd",
              "gamestage",
              "minlight",
              "maxlight",
              "onjoin",
              "helditem",
              "result",
            ],
          },
        ],
      },
    },
    {
      files: ["minecraft/config/incontrol/spawner.json"],
      rules: {
        "jsonc/sort-keys": [
          "error",
          {
            pathPattern: ".*",
            order: ["mob", "persecond", "attempts", "amount", "conditions"],
          },
        ],
      },
    },
    {
      files: "*.ts",
      parser: "@typescript-eslint/parser",
      extends: ["plugin:@typescript-eslint/recommended"],
    },
  ],
};

module.exports = config;
