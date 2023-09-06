C      = gcc
CFLAGS  = -g -Wall -O2
SRCS    = main.c
OBJS    = $(SRCS:.c=.o)

all: hello

hello: $(OBJS)
	$(CC) $(CFLAGS) -o hello $(OBJS)

test: hello
	@echo "Running test..."
	./hello tester

clean:
	rm -f $(OBJS) hello
