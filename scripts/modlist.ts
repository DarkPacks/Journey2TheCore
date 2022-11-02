import fs from "fs/promises";
import path from "path";

const ROOT_DIR_KEY = "__";

const permittedFileTypes = new Set([".jar"]);

const localMinecraftModsDirectory = path.join(
  process.cwd(),
  "minecraft",
  "mods",
);
const modlistPath = path.join(process.cwd(), "modlist.json");

main();

async function main() {
  const fileMapping: FileMapping = {};
  await getSubFiles(localMinecraftModsDirectory, ROOT_DIR_KEY, fileMapping);

  const sortedFileMapping = Object.keys(fileMapping)
    .sort((a, b) => a.toLowerCase().localeCompare(b.toLowerCase()))
    .reduce((obj, key) => {
      obj[key] = fileMapping[key];
      return obj;
    }, {} as FileMapping);

  fs.writeFile(
    modlistPath,
    JSON.stringify(sortedFileMapping, undefined, 2) + "\n",
  );
}

interface FileMapping {
  [key: string]: FileDetails[];
}

interface FileDetails {
  filename: string;
}

async function getSubFiles(dir: string, dirKey: string, mapping: FileMapping) {
  const subFiles = await fs.readdir(dir);

  const files: FileDetails[] = [];

  await Promise.all(
    subFiles.map(async (subFile) => {
      const subFilePath = path.join(dir, subFile);
      const stats = await fs.stat(subFilePath);

      if (stats.isDirectory()) {
        await getSubFiles(subFilePath, createDirKey(dirKey, subFile), mapping);
      } else {
        if (!permittedFileTypes.has(path.extname(subFile))) {
          return;
        }

        files.push({
          filename: subFile,
        });
      }
    }),
  );

  mapping[dirKey] = files.sort((a, b) =>
    a.filename.toLowerCase().localeCompare(b.filename.toLowerCase()),
  );
}

function createDirKey(dirKey: string, newDir: string) {
  if (dirKey === ROOT_DIR_KEY) {
    return newDir;
  }
  return `${dirKey}/${newDir}`;
}
