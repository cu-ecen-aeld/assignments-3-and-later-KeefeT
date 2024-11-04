CC = gcc
CFLAGS = -g


ifeq ($(CROSS_COMPILE), aarch64-none-linux-gnu-)
CC = aarch64-none-linux-gnu-gcc
endif

all: writer

writer: 
	@echo "using gcc ver: $(CC)"
	@echo making writer
	$(CC) ./writer.c -o ./writer

clean:
	rm -f ./writer