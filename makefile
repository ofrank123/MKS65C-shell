all: shell.o parseargs.o
	gcc -g shell.o parseargs.o -o main

test: test.c io.o
	gcc -g io.o test.c -o test

rtest: test
	./test

io.o: io.c io.h
	gcc -g -c io.c

shell.o: shell.c shell.h
	gcc -g -c shell.c

parseargs.o: parseargs.c parseargs.h
	gcc -g -c parseargs.c

clean:
	rm *.o main test

run: all
	./main
