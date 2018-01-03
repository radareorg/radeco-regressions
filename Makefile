CC=gcc

SRC = $(wildcard *.s)
PROGS = $(patsubst %.s,%,$(SRC))
current_dir = $(shell pwd)

all: $(PROGS)

%: %.s
	$(CC) -g -o $@ -masm=intel $<

clean:
	rm $(PROGS)
