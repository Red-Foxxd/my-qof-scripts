#!/bin/sh

mkdir -p ~/.cache/Discord-Updater
rm -r ~/.cache/Discord-Updater/*

curl -L -o ~/.cache/Discord-Updater/discord.tar.gz "discord.com/api/download?platform=linux&format=tar.gz"
tar -xf ~/.cache/Discord-Updater/discord.tar.gz -C ~/.cache/Discord-Updater/

# Insert Path to your Discord. I recommend using somewhere in ~ because no privilege is needed for updating
rm -r  ~/Apps/discord
mkdir  ~/Apps/discord
cp -r ~/.cache/Discord-Updater/Discord/* ~/Apps/discord/
cp ~/.cache/Discord-Updater/Discord/*.* ~/Apps/discord/

exit
