CFLAGS += -march=native -O3 -Wall -Wextra -pedantic -lX11 -lXft -I/usr/include/freetype2 -pthread

PREFIX ?= /usr/local
CC ?= cc

all: herbe

herbe: herbe.c
	$(CC) herbe.c $(CFLAGS) -o herbe

install: herbe
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f herbe ${DESTDIR}${PREFIX}/bin

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/herbe

clean:
	rm -f herbe

.PHONY: all install uninstall clean
