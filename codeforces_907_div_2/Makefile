CPP_FILE := problem_a.cpp
TEST := test.txt
CPPFLAGS := -Wall -Wextra -Werror

all:
	g++ $(CPPFLAGS) $(CPP_FILE) -o a.out
	./a.out < $(TEST)

clean:
	rm -f a.out
