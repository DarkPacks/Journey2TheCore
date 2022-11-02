import fs from "fs";
import isElevated from "is-elevated";
import path from "path";
import readline from "readline";
import sudo from "@vscode/sudo-prompt";

const rl = readline.createInterface(process.stdin, process.stdout);

const buildDir = path.join(process.cwd(), "src");
const symlinkDirs = new Set([
  "config",
  "defaultconfigs",
  "global_packs",
  "journeymap",
  "packmenu",
]);

main();

async function main() {
  if (!checkBuildExists()) {
    console.error(
      "Build directory or sub directories do not exist. Ensure you've built the project before running this command.",
    );
    process.exit(-1);
  }

  if (process.argv[2]) {
    rl.close();
    return createSymlinks(process.argv[2]);
  }

  const mcInstancePath = await ask(
    "Enter the absolute path to your minecraft instance:",
  );

  const existingFiles = checkIfFilesExist(mcInstancePath);
  if (existingFiles) {
    console.log(
      `Existing files matching symlinks are present: ${existingFiles.join(
        ", ",
      )}`,
    );
    const confirmReplace = await ask(
      `Should the existing files be replaced? (y/N)`,
    );
    if (confirmReplace.toLowerCase() !== "y") {
      console.log("You did not confirm. Exiting...");
      process.exit();
    }
  }

  createSymlinks(mcInstancePath);

  rl.close();
}

function ask(query: string): Promise<string> {
  return new Promise((resolve) => {
    rl.question(query + " ", resolve);
  });
}

/**
 * Checks if the build directory and all expected sub directories exist.
 * @returns false if anything is missing
 */
function checkBuildExists(): boolean {
  if (!fs.existsSync(buildDir)) {
    return false;
  }

  return Array.from(symlinkDirs).every((dir) =>
    fs.existsSync(path.join(buildDir, dir)),
  );
}

/**
 *
 * @param {string} mcDir The Minecraft instance directory
 * @returns {string[] | null} Any existing files (or null if none)
 */
function checkIfFilesExist(mcDir: string): string[] | null {
  const files = fs.readdirSync(mcDir);
  const existingFiles = files.filter((dir) => symlinkDirs.has(dir));

  return existingFiles.length > 0 ? existingFiles : null;
}

/**
 *
 * @param {string} mcDir The Minecraft instance directory
 */
async function createSymlinks(mcDir: string) {
  if (!(await isElevated())) {
    sudo.exec(
      `npm run symlink -- ${mcDir}`,
      { name: "MC Pack Symlinker" },
      (error) => {
        if (error) {
          console.error("error in symlink creation:\n" + error);
        }
      },
    );
    return;
  }

  symlinkDirs.forEach((dir) => {
    const newSymlinkPath = path.join(mcDir, dir);

    if (fs.existsSync(newSymlinkPath)) {
      const stat = fs.lstatSync(newSymlinkPath);

      if (stat.isSymbolicLink()) {
        fs.unlinkSync(newSymlinkPath);
      } else if (stat.isDirectory()) {
        fs.rmdirSync(newSymlinkPath);
      } else {
        fs.rmSync(newSymlinkPath);
      }
    }

    fs.symlinkSync(path.join(buildDir, dir), newSymlinkPath);
  });
}
