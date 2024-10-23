# include <iostream>
# include <vector>
# include <algorithm>
# include <cmath>
# include <climits>
# include <string>

template <typename T>
std::ostream& operator<<(std::ostream& os, const std::vector<T>& vec) {
    for (size_t i = 0; i < vec.size(); ++i) {
        os << vec[i] << (i < vec.size() - 1 ? " " : "");
    }
    return os;
}

template <typename T>
void printDebugVector(const std::vector<T>& vec) {
    std::cout << "[";
    std::cout << vec;
    std::cout << "]" << std::endl;
}

void logic() {
    
}

int main() {

    return (0);
}
