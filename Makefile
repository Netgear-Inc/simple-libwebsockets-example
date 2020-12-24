all: server client

server: server.c
	$(CC) -g -Wall $< -o $@ `pkg-config libwebsockets --libs --cflags`
client: client.c
	$(CC) -g -Wall $< -o $@ `pkg-config libwebsockets --libs --cflags`

clean:
	rm -f server
	rm -rf server.dSYM
	rm -f client
	rm -rf client.dSYM
