# Learn ucore OS

## Prerequisites

- [Docker](https://www.docker.com/get-started)
  
## Get started

You can start a qemu instance in an interactive mode inside an ubuntu:14.04 container for lab1 by:
```shell
docker-compose run --service-ports --rm lab1
```

Also, it can specify a container name for debug by `--name`, otherwise you need find the container id via `docker-compose ps -a`

## How to debug

#### Option 1

##### Steps

1. Enter the qemu instance container via an interactive mode bash
    ```shell
    docker exec -it <container_id/container_name> bash
    ```
1. Run `gdb` in text ui mode with init config inside the container.
    ```bash
    gdb -tui -x ./tools/gdbinit
    ```
1. Press enter to continue

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