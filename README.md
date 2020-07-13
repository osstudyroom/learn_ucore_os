# Learn ucore OS

## Prerequisites

- [Docker](https://www.docker.com/get-started)
  
## Get started

You can start a qemu instance in an interactive mode inside an ubuntu:14.04 container for lab1 by:
```shell
./run start lab1
```

## How to debug

#### Option 1

Using gdb inside the container:
```shell
./run debug lab1
```

#### Option 2

##### Prerequisites

- `gdb` on mac
- VSCode
- VSCode Extension: [Native Debug](https://marketplace.visualstudio.com/items?itemName=webfreak.debug)

##### Steps

1. Install `gdb` on mac
   ```
   brew install gdb
   ```
   > An alternative for `gdb` is `i386-elf-gdb`. But it needs configuration of the `gdbpath` for Native Debug in `.vscode/launch.json` since `i386-elf-gdb` won't link the executable file to PATH.
1. Confirm the debug config in `.vscode/launch.json`
1. Make breakpoints in VSCode
1. Run `Debug Lab1` config in VSCode Run View.