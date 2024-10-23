#!/bin/bash

# automates the process of creating a Codeforces contest directory

contest_dir="codeforces_907_div_2"

mkdir -p "$contest_dir"

for problem in {a..f}; do
    cp template.cpp "$contest_dir/problem_$problem.cpp"

makefile="$contest_dir/Makefile"
cat > "$makefile" <<EOL
CPP_FILE := problem_a.cpp
TEST := test.txt
CPPFLAGS := -Wall -Wextra -Werror

all:
	g++ \$(CPPFLAGS) \$(CPP_FILE) -o a.out
	./a.out < \$(TEST)

clean:
	rm -f a.out
EOL

# create a test file
test_file="$contest_dir/test.txt"
touch "$test_file"

echo "Contest directory '$contest_dir' and files created successfully."
