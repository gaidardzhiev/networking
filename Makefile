CC=gcc
LIBC=libc.a
all: reverse_shell
all: down

reverse_shell: reverse_shell.c
	$(CC) -Wall -g -fPIE -L. /lib/$(LIBC)\
		-L. -static-libgcc\
		-o reverse_shell reverse_shell.c

down: down.c
	$(CC) -g -Wall down.c -o down -lcurl

clean: 
	rm reverse_shell

