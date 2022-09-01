CC_FLAGS = -Werror -Wextra -Wall -std=c11

all: clean s21_grep

s21_grep:
	gcc $(CC_FLAGS) s21_grep.c -o s21_grep

style: clean
	cppcheck  *.c
	cp ../../materials/linters/CPPLINT.cfg CPPLINT.cfg
	python3 ../../materials/linters/cpplint.py --extension=c *.c

leaks: s21_grep
	CK_FORK=no leaks --atExit -- ./s21_grep 1.txt

test: all
	sh test_grep.sh

clean:
	rm -rf s21_grep
