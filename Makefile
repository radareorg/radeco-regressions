CC=gcc

SRC = $(wildcard *.s)
PROGS = $(patsubst %.s,%,$(SRC))

all: $(PROGS)

%: %.s
	$(CC) -g -o $@ -masm=intel -nostdlib bootstrap.c $<

clean: $(PROGS)
	rm $@
