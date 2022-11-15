/** @type {import('eslint').Linter.Config} */
const config = {
  extends: ["plugin:json-schema-validator/recommended"],
  rules: {
    "json-schema-validator/no-invalid": [
      "error",
      {
        schemas: [
          {
            fileMatch: ["*/config/incontrol/loot.json"],
            schema: "./schemas/minecraft/incontrol/loot.json",
          },
          {
            fileMatch: ["*/config/incontrol/spawn.json"],
            schema: "./schemas/minecraft/incontrol/spawn.json",
          },
          {
            fileMatch: ["*/config/incontrol/spawner.json"],
            schema: "./schemas/minecraft/incontrol/spawner.json",
          },
        ],
        useSchemastoreCatalog: true,
      },
    ],
  },
};

module.exports = config;
