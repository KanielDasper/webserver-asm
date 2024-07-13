# Web Server written in assembly

Assembly code written for mach-1 arm64 (Aarch64) architecture on an MacOS M1 Pro

The code foundation is based on the following article: https://medium.com/@vincentcorbee/http-server-in-arm64-assembly-apple-silicon-m1-077a55bbe9ca

To replicate and run the webserver you can either emulate the macOS
architecture with QEMU (super difficult) or you can buy a MacBook with an ARM
chip

Run the makefile and program with:

```shell

make ./bin/server

# Then in the root directory

./bin/server

# Project includes dodgy "make clean"

make clean

```

## TO-DO 

- Add extended functionality of the localhost webserver

- Inspect and optimize macros.s
