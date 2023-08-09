#!/usr/bin/env bash

# Uninstall Arcade following the instructions here (pasted below):
# https://support.output.com/hc/en-us/articles/360042744934-How-To-Completely-Uninstall-Arcade

# MAC:
# To uninstall ARCADE you'll need to manually delete the ARCADE plugin file in each plugin directory. Here are the 4 folders in which you'll find an ARCADE file:
#
# /Library/Audio/Plug-Ins/Components/Arcade.component
# /Library/Audio/Plug-Ins/VST/Arcade.vst
# /Library/Audio/Plug-Ins/VST3/Arcade.vst3
# /Library/Application Support/Avid/Audio/Plug-Ins/Arcade.aax
#
# Next, you'll need to delete the ARCADE content folder located here:
#
# /Library/Application Support/Output/Arcade

# Check for sudo
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# List directory contents recursively and confirm before deleting
ls -Ra /Library/Audio/Plug-Ins/Components/Arcade.component
ls -Ra /Library/Audio/Plug-Ins/VST/Arcade.vst
ls -Ra /Library/Audio/Plug-Ins/VST3/Arcade.vst3
ls -Ra /Library/Application\ Support/Avid/Audio/Plug-Ins/Arcade.aax
ls -Ra /Library/Application\ Support/Output/Arcade

# Print total space used by the files
du -sh /Library/Audio/Plug-Ins/Components/Arcade.component \
/Library/Audio/Plug-Ins/VST/Arcade.vst \
/Library/Audio/Plug-Ins/VST3/Arcade.vst3 \
/Library/Application\ Support/Avid/Audio/Plug-Ins/Arcade.aax \
/Library/Application\ Support/Output/Arcade

# Pause and give the user an opportunity to cancel
echo
read -p "Press any key to continue or CTRL-C to cancel"

# Delete the files
rm -rf /Library/Audio/Plug-Ins/Components/Arcade.component
rm -rf /Library/Audio/Plug-Ins/VST/Arcade.vst
rm -rf /Library/Audio/Plug-Ins/VST3/Arcade.vst3
rm -rf /Library/Application\ Support/Avid/Audio/Plug-Ins/Arcade.aax
rm -rf /Library/Application\ Support/Output/Arcade

# Confirm deletion
ls -la /Library/Audio/Plug-Ins/Components/Arcade.component
ls -la /Library/Audio/Plug-Ins/VST/Arcade.vst
ls -la /Library/Audio/Plug-Ins/VST3/Arcade.vst3
ls -la /Library/Application\ Support/Avid/Audio/Plug-Ins/Arcade.aax
ls -la /Library/Application\ Support/Output/Arcade

