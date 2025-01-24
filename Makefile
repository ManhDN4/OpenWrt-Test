CC=gcc
CFLAGS=-Wall

all: helloword

hello: helloword.o
	$(CC) $(CFLAGS) -o helloword helloword.o

clean:
	rm -f helloword helloword.o

%.o: %.c
	$(CC) $(CFLAGS) -c $<
