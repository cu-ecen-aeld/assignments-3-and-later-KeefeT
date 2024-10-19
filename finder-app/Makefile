CC = gcc
ARM_TOOLCHAINS_DIR := ~/toolchains/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu/bin/
CFLAGS = -g


ifeq ($(CROSS_COMPILE), aarch64-none-linux-gnu-)
CC = $(ARM_TOOLCHAINS_DIR)aarch64-none-linux-gnu-gcc
endif

all: writer

writer: 
	@echo "using gcc ver: $(CC)"
	@echo making writer
	$(CC) ./writer.c -o ./writer

clean:
	rm -f ./writer