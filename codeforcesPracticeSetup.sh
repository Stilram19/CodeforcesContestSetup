#!/bin/bash

# automates the process of creating a Codeforces practice directory

DIR="practice"

mkdir -p "$DIR"

cp template.cpp "$DIR/problem.cpp"

makefile="$DIR/Makefile"
cat > "$makefile" <<EOL
CPP_FILE := problem.cpp
TEST := test.txt
CPPFLAGS := -Wall -Wextra -Werror

all:
	g++ \$(CPPFLAGS) \$(CPP_FILE) -o a.out
	./a.out < \$(TEST)

clean:
	rm -f a.out
EOL

# create a test file
test_file="$DIR/test.txt"
touch "$test_file"

echo "Practice directory and files created successfully."
