CC=gcc
CFLAGS=-g -Wall

BIN=down

all: $(BIN)

%: %.c
	$(CC) $(CFLAGS) $< -o $@ -lcurl

clean:
	$(RM) -rf $(BIN)
