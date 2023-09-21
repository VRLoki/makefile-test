CC = /usr/local/bin/gcc-13
CFLAGS = -Wall -pedantic -Werror -Wextra -std=gnu89

all: 0-isuper 1-isdigit

0-isuper: 0-main.c 0-isupper.c
	$(CC) $(CFLAGS) -o $@ $^

1-isdigit: 1-main.c 1-isdigit.c
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -f 0-isuper 1-isdigit

fclean: clean

re: fclean all

.PHONY: all clean fclean re