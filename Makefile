all: clean
	# nasm -O1 -f macho64 -o falkhash1_asm.o falkhash1.asm 
	# gcc -O2 -g -o falkhash1 falkhash1.c falkhash1_asm.o
	cc -O2 -maes -o falkhash2-cc falkhash2.c
	gcc -O2 -maes -g -o falkhash2-gcc  falkhash2.c
	mv falkhash2-* bin
	
clean:
	rm -rf bin/falkhash*
	rm -f *.o

