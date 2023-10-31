#!/bin/bash

# Automates the process of creating a Codeforces contest directory

# Define contest directory name
contest_dir="codeforces_907_div_2"

# Create the contest folder
mkdir -p "$contest_dir"

# Create C++ problem files (problem_a.cpp through problem_f.cpp)
for problem in {a..f}; do
    touch "$contest_dir/problem_$problem.cpp"
    cat > "$contest_dir/problem_$problem.cpp" <<EOL
# include <iostream>
# include <vector>
# include <map>
# include <algorithm>
# include <string>
# include <cmath>

int main()
{

    return (0);
}

// link to the problem:
EOL
done

# Create a Makefile
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

# Create a test file
test_file="$contest_dir/test.txt"
touch "$test_file"

echo "Contest directory '$contest_dir' and files created successfully."
