build:
	make compile
	make verify-grub
	make build-iso

compile:
	i386-elf-as boot.s -o boot.o
	i386-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
	i386-elf-gcc -T linker.ld -o tortos.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc
	
verify-grub:
	grub-file --is-x86-multiboot tortos.bin

build-iso:
	mkdir -p isodir/boot/grub
	cp tortos.bin isodir/boot/tortos.bin
	cp grub.cfg isodir/boot/grub/grub.cfg
	grub-mkrescue -o tortos.iso isodir

run:
	qemu-system-i386 -cdrom tortos.iso