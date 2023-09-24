AS=as
CC=gcc
LIBC=libc.a
all: reverse_shell
all: down

reverse_shell: reverse_shell.c
	$(CC) -Wall -g -no-pie -static\
		-L. /lib/$(LIBC)\
		-L. -static-libgcc\
		-o reverse_shell reverse_shell.c

down: down.c
	$(CC) -g -Wall down.c -o down -lcurl

arm_rev_sh: arm_rev_sh.s
	$(AS) arm_rev_sh.s -o arm_rev_sh.o
	$(LD) -N arm_rev_sh.o -o arm_rev_sh

clean: 
	rm reverse_shell down arm_rev_sh

