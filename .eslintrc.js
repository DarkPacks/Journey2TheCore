/** @type {import('eslint').Linter.Config} */
const config = {
  root: true,
  extends: ["./configs/eslint/common", "./configs/eslint/minecraft"],
};

module.exports = config;
