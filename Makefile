CC=gcc
LIBC=libc.a
TCC=tcc
all: reverse_shell
all: down
all: obf

reverse_shell: reverse_shell.c
	$(CC) -Wall -g -no-pie -static\
		-L. /lib/$(LIBC)\
		-L. -static-libgcc\
		-o reverse_shell reverse_shell.c

down: down.c
	$(CC) -g -Wall down.c -o down -lcurl

obf: obf.c
	$(TCC) obf.c -o obf

clean: 
	rm reverse_shell down revsh
