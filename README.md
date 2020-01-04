# MMT Extended Addons
Repository of Addons for [MMT Extended](https://github.com/Zackptg5/MMT-Extended).

## Usage
- Read the README in each repo addon folder to understand its purpose
- You can delete the folders of the addons you don't need
- Don't delete or modify anything in the addon folder unless the readme states otherwise
- Note that you can compress the addon folder into a tar.xz file to save space.

To compress to a tar.xz file, you can use the command `tar -cJf addon.tar.xz addon` from terminal or if using Windows, install [7-zip](https://www.7-zip.org/download.html) and compress the folder to addon.tar and then compress addon.tar to addon.tar.xz with ultra compression.

- You can create your own addons too. Scripts in root of your addon folder with these names will be run automatically at specified times:
  - main.sh: Runs before pretty much everything (right before custom is run but after variables are set). Good for settings variables and functions if they'll be needed across multiple of the following scripts
  - preinstall.sh: Runs at the very beginning of the install - before anything else is installed
  - install.sh: Runs after main_install.sh script is run but before files in system are copied
  - uninstall.sh: Runs at the very beginning of the uninstall - before anything else is uninstalled
  - postuninstall.sh: Runs at the end of the uninstall

## Support
[MMT Extended XDA Thread](https://forum.xda-developers.com/apps/magisk/MMT-Extended)
