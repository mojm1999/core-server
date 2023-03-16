CC ?= gcc

CFLAGS = -g -O2 -Wall

SERVER_BUILD_PATH ?= .

$(SERVER_BUILD_PATH)/server : core-src/core_main.c
	$(CC) $(CFLAGS) -o $@ $^