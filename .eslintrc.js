/** @type {import('eslint').Linter.Config} */
const config = {
  root: true,
  extends: [
    "eslint:recommended",
    "plugin:toml/recommended",
    "plugin:jsonc/prettier",
    "plugin:@typescript-eslint/recommended",
    "plugin:editorconfig/all",
    "plugin:prettier/recommended",
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
      rules: {
        "prettier/prettier": "off",
      },
    },
    {
      files: ["*.json", "*.json5", "*.jsonc", "*.mcmeta"],
      parser: "jsonc-eslint-parser",
    },
    {
      files: "*.ts",
      parser: "@typescript-eslint/parser",
    },
  ],
};

module.exports = config;