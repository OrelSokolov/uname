nonshared:
	mkdir -p build
	gcc -c src/uname.c -o build/uname.o

shared: nonshared
	gcc --shared -o build/uname.so build/uname.o

install: shared
	mv build/uname.so /usr/lib/
	ldconfig -n -v /usr/lib

clean:
	rm build/uname.o
