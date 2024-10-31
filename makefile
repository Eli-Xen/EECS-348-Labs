#makefile lab 2 eecs 348 
CC=gcc
CFLAGS= -c -Wall
all:prog
prog: main.o isEven.o isOdd.o
	$(CC) main.o isEven.o isOdd.o -o prog
main.o: main.c
	$(CC) $(CFLAGS) main.c
isEven.o: isEven.c
	$(CC) $(CFLAGS) isEven.c
isOdd.o: isOdd.c
	$(CC) $(CFLAGS) isOdd.c
clean:
	rm -rf *.o