/** @type {import('eslint').Linter.Config} */
const config = {
  overrides: [
    {
      files: ["minecraft/**/*.toml"],
      parser: "toml-eslint-parser",
      rules: {
        "toml/indent": ["error", "tab", { subTables: 1, keyValuePairs: 1 }],
        "toml/spaced-comment": ["error", "never"],
        "toml/table-bracket-spacing": ["error", "never"],
        "editorconfig/eol-last": ["off"],
        "comma-spacing": ["error", { after: true, before: false }],
        "no-multi-spaces": ["error"],
      },
    },
  ],
};

module.exports = config;
