# Installation

Gdscript is a domain specific language and can thereby requires the godot game engine to be installed.

## General

Working on the track will require the godot engine being setup to run from the terminal.

You can install godot through [gitub][godot-github].
Pick the version marked with your operating system and the version marked as non mono.

You can also install godot through [steam][godot-steam], but it is a bit harder to setup it to work as a cli tool, thereby it is not recommended while working on the track.

## Windows

### Github

First you have to download the bit version which your operating system has (likely 64bit) of the engine from [github][godot-github].
Then you have open up the explorer and navigate to the folder where you downloaded the engine.
Right click on the zip file and press extract all.
Select a folder to extract the engine to and press extract.

### Setup godot to terminal

This tutorial will use powershell 7, other methods might work but are not covered here.

To be able to run godot from powershell you have to add the engine to the path variable.
To do this you have to open up the start menu and search for `edit environment variables for your account`.
Press enter and a window should open up.
Click on the `path` variable and press edit.
Press new and add the path to the folder where you extracted the engine (**not the executable**).

After you have added the path variable you have to add a godot alias to powershell.
Running: `echo $profile` should give you the path to the powershell profile.
Open up the file in a text editor and add the following line:
`New-Alias godot Godot_v<version>-stable_win64_console.exe`

Note: Every time you update the engine you have to redo these steps.

Writing `godot` in powershell should now open up the godot editor.

## Linux

First you have to download the bit version which your operating system has (likely 64bit) of the engine from [github][godot-github] and pick the non mono version.
To download write the following in the terminal: `sudo wget https://github.com/godotengine/godot/releases/download/<version>-stable/Godot_v<version>-stable_linux.x86_64.zip`.
Then you have to unzip, `unzip Godot_v<version>-stable_linux.x86_64.zip`.
Then you have to move the engine to the `/usr/local/bin` folder, `sudo mv Godot_v<version>-stable_linux.x86_64 /usr/local/bin/godot`.

To verify that the engine is installed correctly you can write `godot --version` in the terminal.

[godot-github]: https://github.com/godotengine/godot/releases
[godot-steam]: https://store.steampowered.com/app/404790/Godot_Engine/
