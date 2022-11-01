/** @type {import('eslint').Linter.Config} */
module.exports = {
  root: true,
  extends: ["eslint:recommended", "plugin:editorconfig/all"],
  plugins: ["@typescript-eslint", "editorconfig"],
  env: {
    es2021: true,
    node: true,
  },
  overrides: [
    {
      files: "*.toml",
      parser: "toml-eslint-parser",
      extends: ["plugin:toml/recommended"],
    },
    {
      files: "*.json",
      extends: ["plugin:json/recommended", "plugin:prettier/recommended"],
    },
    {
      files: "tsconfig.json",
      rules: {
        "json/*": ["error", { allowComments: true }],
      },
    },
    {
      files: ["*.js", "*.ts"],
      extends: ["plugin:prettier/recommended"],
    },
    {
      files: "*.ts",
      extends: ["plugin:@typescript-eslint/recommended"],
      parser: "@typescript-eslint/parser",
    },
  ],
};
