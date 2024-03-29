/** @type {import('eslint').Linter.Config} */
const config = {
  overrides: [
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
      files: ["minecraft/**/tconstruct_modifiers/**/*.json"],
      rules: {
        "jsonc/sort-keys": [
          "error",
          {
            pathPattern: "^$",
            order: [
              "type",
              "input",
              "inputs",
              "amount_per_item",
              "needed_per_level",
              "tools",
              "slots",
              "allow_crystal",
              "result",
              "max_level",
            ],
          },
          {
            pathPattern: "^result$",
            order: ["name", "level"],
          },
          {
            pathPattern: "^inputs?(\\[\\d+\\])?$",
            order: ["type", "item", "nbt"],
          },
        ],
      },
    },
  ],
};

module.exports = config;
