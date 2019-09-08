nonshared:
	mkdir -p build
	gcc -fPIC -c src/uname.c -o build/uname.o

shared: nonshared
	gcc -fPIC --shared -o src/uname.so build/uname.o

clean:
	rm -r build/
