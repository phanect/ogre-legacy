# Ogre

A cross-language monorepo manager

## Install

### [npm](https://www.npmjs.com/package/ogre)

```sh
npm install -D ogre
```
### [Cargo](https://crates.io/crates/ogre)

```sh
cargo install ogre
```

### [Pre-built binaries](https://github.com/phanect/ogre/releases)

Download from the list on the Release page.

## Usage

### Create ogre.toml on your project root

PROJECT_ROOT/ogre.toml

```
# While it is not mandatory, it is recommended to add `root = true` into ogre.toml under project root.
root = true

version = "1.0.0"

[scripts]
# This Ogre Script can be executed by `ogre lint` or `ogre run lint`.
# The following is identical to `tsc --noEmit && eslint . && ogre validate`
# `npx` is not required for commands from npm.
lint = [ "tsc --noEmit", "eslint .", "ogre validate" ]

# You can also run script files
foo = "./scripts/foo.ts" # Runs `npx esno "./scripts/foo.ts"`
bar = [ "./scripts/bar.rs", "ogre validate" ] # Runs `cargo run "./scripts/bar.rs" && ogre validate`

# Hooks: pre{SCRIPT_NAME} and post{SCRIPT_NAME} runs before and after the script.
prebuild = "./scripts/prebuild.sh"

# Configuration for Ogre itself
[ogre]
# Compatible Ogre major version.
# If you use an unmatched major version of Ogre CLI, a warning or an error is raised.
#
# During 0.x versions, breaking changes may be included when the minor version is bumped up.
# When the patch version is bumped up, there should be no breaking changes.
# e.g. When you update from 0.1.0 to 0.2.0, there may be breaking changes, but when you update from 0.1.0 to 0.1.1, there should be no breaking changes.
engineVersion = "0.1"
```

```sh
cd /path/to/your/project/root
ogre
```

### CLI Options

- `-a`: Exclude audio sources
- `-b`: Use custom `base URL`

## License

[Apache-2.0](./LICENSE)
