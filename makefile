make:
	gcc *.c -O2 -W -Wall -Wextra -ansi -pedantic -lm -o zopfli

lib:
	gcc *.c -c -O2 -W -Wall -Wextra -ansi -pedantic -lm -fPIC
	gcc *.o -shared -o libzopfli.so

lib32:
	gcc *.c -m32 -c -O2 -W -Wall -Wextra -ansi -pedantic -lm -fPIC
	gcc *.o -m32 -shared -o libzopfli.so

debug:
	gcc *.c -g3 -lm -o zopfli
