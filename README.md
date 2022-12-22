### Assembly Hello World! to x86 architecture.

This example uses a IF to compare a string "Hello World". If true, 👩, else "FALSO!".

To compile it:

```
$ nasm -f elf hello.asm
$ gcc hello.o -m64 -o hello.exe
```
