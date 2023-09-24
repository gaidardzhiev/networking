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

clean: 
	rm reverse_shell down
