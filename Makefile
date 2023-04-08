CC=gcc
all: reverse_shell
all: down

reverse_shell: reverse_shell.c
	gcc -Wall -g -fPIE -L. /lib/libc.a\
		-L. -static-libgcc\
		-o reverse_shell reverse_shell.c

down: down.c
	gcc -g -Wall down.c -o down -lcurl

clean: 
	rm reverse_shell

