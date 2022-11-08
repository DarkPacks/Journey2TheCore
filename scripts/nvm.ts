import { readFileSync } from "fs";
import isElevated from "is-elevated";
import path from "path";
import sudo from "@vscode/sudo-prompt";

main();

enum CommandAction {
  USE = "use",
  INSTALL = "install",
}

async function main() {
  const wantedNodeVersion = readFileSync(path.join(process.cwd(), ".nvmrc"), {
    encoding: "utf-8",
    flag: "r",
  }).replace("v", "");

  if (!(await isElevated())) {
    exec(CommandAction.USE, wantedNodeVersion)
      .then(() => {
        process.exit();
      })
      .catch(() => {
        console.log("attempting to install node version", wantedNodeVersion);
        return exec(CommandAction.INSTALL, wantedNodeVersion);
      })
      .then(() => {
        return exec(CommandAction.USE, wantedNodeVersion);
      })
      .catch(() => process.exit(-1));
  }
}

async function exec(
  action: CommandAction,
  wantedNodeVersion: string,
): Promise<void> {
  let command = `nvm ${action}`;
  if (process.platform === "win32") {
    command = `nvm ${action} ${wantedNodeVersion}`;
  }

  return new Promise((resolve, reject) => {
    sudo.exec(command, { name: "MC Pack NVM Runner" }, (error, stdout) => {
      const message = stdout?.toString() || "";
      console.log(message);

      if (error || /not installed/i.test(message)) {
        reject();
        return;
      }

      resolve();
    });
  });
}
