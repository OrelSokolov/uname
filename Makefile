nonshared:
	mkdir -p build
	gcc -c src/uname.c -o build/uname.o

nonshared_fpic:
	mkdir -p build
	gcc -fPIC -c src/uname.c -o build/uname.o

shared: nonshared
	gcc --shared -o src/uname.so build/uname.o

shared_fpic: nonshared_fpic
	gcc --shared -fPIC -o src/uname.so build/uname.o

clean:
	rm -r build/
