nonshared:
	mkdir -p build
	gcc -c src/uname.c -o build/uname.o

shared: nonshared
	gcc --shared -o src/uname.so build/uname.o

clean:
	rm -r build/
