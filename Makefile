WARNING = -Wall -Wshadow --pedantic
ERROR = -Wvla -Werror
GCC = gcc -std=c11 -g $(WARNING) $(ERROR) 

SRCS = main.c longest_common.c
OBJS = $(SRCS:%.c=%.o)

longest_common: $(OBJS) 
	$(GCC) $(OBJS) -o longest_common

.c.o: 
	$(GCC) -c $*.c 

testall: test1 test2 test3 test4 test5 test6 test7 test8 test9 test10

test1: longest_common
	./longest_common inputs/test1 > output1
	diff output1 expected/expected1

test2: longest_common
	./longest_common inputs/test2 > output2
	diff output2 expected/expected2

test3: longest_common
	./longest_common inputs/test3 > output3
	diff output3 expected/expected3

test4: longest_common
	./longest_common inputs/test4 > output4
	diff output4 expected/expected4

test5: longest_common
	./longest_common inputs/test5 > output5
	diff output5 expected/expected5

test6: longest_common
	./longest_common inputs/test6 > output6
	diff output6 expected/expected6

test7: longest_common
	./longest_common inputs/test7 > output7
	diff output7 expected/expected7

test8: longest_common
	./longest_common inputs/test8 > output8
	diff output8 expected/expected8

test9: longest_common
	./longest_common inputs/test9 > output9
	diff output9 expected/expected9

test10: longest_common
	./longest_common inputs/test10 > output10
	diff output10 expected/expected10

leak: longest_common
	valgrind ./longest_common inputs/test9 vial

clean: # remove all machine generated files
	rm -f longest_common *.o *.txt output*