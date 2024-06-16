all: dlbox
	./dlbox gcc -g3 libhello.S
	./dlbox gcc -g3 libc.S
	./dlbox gcc -g3 main.S
	./dlbox objdump libhello.dl > libhello.txt
	./dlbox objdump libc.dl > libc.txt
	./dlbox objdump main.dl > main.txt
	rm -f *.o
	
dlbox: dlbox.c
	gcc -g3 $(CFLAGS) $< -o $@

clean:
	rm -f *.o *.dl *.txt dlbox
