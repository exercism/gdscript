# Installation

## Installing Godot Engine

The GDScript track is built on top of [Godot Engine][godot-engine], which runs on Windows, Linux, macOS, and Android.
This track requires Godot version 4.0 or greater.

After completing the installation, you can verify if the CLI was installed successfully by running this command in a terminal:

```bash
godot --version
```

## Installing the Exercism GDScript track test runner

You'll need [Godot installed][installation] correctly to use the test runner.

To build and test GDScript scripts for Exercism, Godot will be run in "headless" mode from the CLI.
These instructions currently require Linux and bash.

### Step 1: Installing the overall test runner infrastructure

To set up for testing, clone [https://github.com/exercism/gdscript-test-runner][gdscript-test-runner] and move its contents to `/opt/exercism/gdscript/test-runner/`:

```sh
git clone https://github.com/exercism/gdscript-test-runner.git
sudo mv gdscript-test-runner/ /opt/exercism/gdscript/test-runner/
```

### Step 2: Downloading the single-exercise test runner script

Assuming you have the `exercism` tool set up and have downloaded at least one GDScript exercise, it should have created an `exercism/gdscript` folder to house the exercises.
Save [the test runner][test-local-gdscript-solution] in this folder and mark the file executable.

## Running tests

With the installation steps done, you should be able start from any exercise directory (e.g., `~/exercism/gdscript/two-fer`) and run the script (living one level up, in `../`) to test your local solution to that exercise:

```sh
../test-local-gdscript-solution.sh
```

[installation]: https://exercism.org/docs/tracks/gdscript/installation
[gdscript-test-runner]: https://github.com/exercism/gdscript-test-runner
[test-local-gdscript-solution]: https://raw.githubusercontent.com/exercism/gdscript-test-runner/refs/heads/main/bin/test-local-gdscript-solution.sh

## Using an IDE

For syntax checking of GDScript files from, for example, [Visual Studio Code][vscode], you'll need to keep the Godot GUI running with a project open in order to activate the debug server, and an extension like [godot-tools][godot-tools] installed and activated.

[godot-engine]: https://godotengine.org/
[vscode]: https://code.visualstudio.com/download
[godot-tools]: https://open-vsx.org/vscode/item?itemName=geequlim.godot-tools