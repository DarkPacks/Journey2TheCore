# Journey2TheCore

## Development

The repo utilizes Node.js (and npm) to manage build tools, and other useful dependencies. In addition, the repo includes pre-configured settings and recommended extensions to improve the developer experience, so VSCode is recommended.

1. [Getting Started](#getting-started)
2. [Development Loop](#development-loop)
3. [Additional Scripts](#additional-scripts)

### Getting Started

When first starting development, make sure you go through these steps to get your development environment set up.

1. [Installing / Setting Up Node](#nodejs--npm)

#### Node.js / NPM

To get started, make sure you have Node.js installed. For easier management of your Node.js version, we recommend installing NVM (Node Version Manager) instead. For Windows you can install from the latest release [here](https://github.com/coreybutler/nvm-windows/releases) and for OSX/Linux follow the steps [here](https://github.com/nvm-sh/nvm#installing-and-updating).

Once installed, run `nvm install 16.16.0` then `nvm use 16.16.0` once the installation completes.

### Development Loop

1. Ensure you are using the correct Node.js version by running `npm run setup:node`
2. If you've pulled in changes, make sure you've updated your dependencies by running `npm install`
3. Work on the project
4. When ready to commit, run `npm run lint` to check for code styling issues. _Note: This will run automatically when you try to commit_

### Additional Scripts

These are additional scripts that are provided for easing development processes.

- `npm run format` attempts to auto-format supported file types
- `npm run modlist` generates a `modlist.json` file in the root of the project. This provides some basic mod dependency tracking. _Note: this will run automatically when you try to commit_
- `npm run symlink` generates symlinks between the repo and a minecraft instance.
