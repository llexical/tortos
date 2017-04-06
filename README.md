# Tortos

## The future of all great OS's begins here! 
Tortos has small beginings, have faith, it will be a fantastic OS with many features, even if they are currently unknown ahahah.

*NOTE: Currently a copy & pasted bare bones OS and no credit goes to me.*

Credit:
- [osdev.org - Bare Bones OS](http://wiki.osdev.org/Bare_Bones)
- [Cross Compiler](https://github.com/cfenollosa/os-tutorial/tree/master/11-kernel-crosscompiler)

## Setup OSX:
- Setup your [cross compiler](https://github.com/cfenollosa/os-tutorial/tree/master/11-kernel-crosscompiler). If you don't know why take a quick look at: [Why do I need a cross compiler?](http://wiki.osdev.org/Why_do_I_need_a_Cross_Compiler%3F)
    - the gcc mirror is out of date, so instead install: 
    ```
    curl -O ftp://ftp.mirrorservice.org/sites/sourceware.org/pub/gcc/releases/gcc-4.9.1/gcc-4.9.1.tar.bz2
    ```
- [Install Grub2 on OSX](http://wiki.osdev.org/GRUB#Installing_GRUB_2_on_OS_X), Grub2 is your bootloader.

- `brew install xorriso` so you can build ISO's and run them.

- `make build` to compile, verify and build your ISO.

- `make run` to run your ISO.

