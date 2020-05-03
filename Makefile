CFLAGS=-DLINUX -g


rinetd: rinetd.o match.o
	$(CC) rinetd.o match.o -o rinetd

install: rinetd
	install -m 700 rinetd /usr/sbin
	install -m 644 rinetd.8 /usr/man/man8
clean:
	rm -rf *.o
