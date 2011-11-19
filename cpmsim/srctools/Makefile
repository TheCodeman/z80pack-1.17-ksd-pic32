CC = gcc

CFLAGS= -O -s -Wall

all: format bin2hex send receive
	@echo "done"

format: format.c
	$(CC) $(CFLAGS) -o format format.c
	cp format ..

bin2hex: bin2hex.c
	$(CC) $(CFLAGS) -o bin2hex bin2hex.c
	cp bin2hex ..

send: send.c
	$(CC) $(CFLAGS) -o send send.c
	cp send ..

receive: receive.c
	$(CC) $(CFLAGS) -o receive receive.c
	cp receive ..

clean:
	rm -f format format.exe bin2hex bin2hex.exe receive receive.exe \
	send send.exe

allclean:
	make clean
	rm -f ../format ../format.exe ../bin2hex ../bin2hex.exe \
	../receive ../receive.exe ../send ../send.exe
