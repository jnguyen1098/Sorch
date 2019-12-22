CC = gcc
VFLAGS = --leak-check=full --track-origins=yes --show-leak-kinds=all
CFLAGS = -Wall -pedantic

normal: compile
	./main

valgrind: compile
	valgrind $(VFLAGS) ./main

compile:
	$(CC) $(CFLAGS) sorch.c -o main
