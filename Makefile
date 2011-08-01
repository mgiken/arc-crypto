CC = gcc
CFLAGS = -fPIC -lcrypto -O3 -Wall --ansi --shared

prefix = ${shell arc --show-prefix}

bindir = $(DESTDIR)/$(prefix)/bin
libdir = $(DESTDIR)/$(prefix)/lib/arc/site

all: crypto.so

crypto.so: crypto.c
	$(CC) $(CFLAGS) -o $@ $<

install:
	mkdir -p $(libdir)
	cp crypto.so $(libdir)/crypto.so
	cp crypto.arc $(libdir)/crypto.arc

uninstall:
	rm -rf $(libdir)/crypto.so
	rm -rf $(libdir)/crypto.arc

clean:
	rm -rf crypto.so
