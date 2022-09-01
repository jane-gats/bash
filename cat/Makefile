CC_FLAGS = -Werror -Wextra -Wall -std=c11

all: clean s21_cat

s21_cat: s21_cat.c
	gcc $(CC_FLAGS) s21_cat.c -o s21_cat 

style: clean
	cppcheck  *.c
	cp ../../materials/linters/CPPLINT.cfg CPPLINT.cfg
	python3 ../../materials/linters/cpplint.py --extension=c *.c

leaks: s21_cat
	CK_FORK=no leaks --atExit -- ./s21_cat 1.txt

test: all
	sh test_cat.sh

clean:
	rm -rf s21_cat
