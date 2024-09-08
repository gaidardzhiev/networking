CC=gcc
LIBC=libc.a
TCC=tcc
all: reverse_shell
all: down
all: revsh

reverse_shell: reverse_shell.c
	$(CC) -Wall -g -no-pie -static\
		-L. /lib/$(LIBC)\
		-L. -static-libgcc\
		-o reverse_shell reverse_shell.c

down: down.c
	$(CC) -g -Wall down.c -o down -lcurl

revsh: revsh.c
	$(TCC) revsh.c -o revsh

clean: 
	rm reverse_shell down revsh
