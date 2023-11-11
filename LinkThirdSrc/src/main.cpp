#include <fmt/format.h>
#include <iostream>
int main(int argc, char* argv[], char* env[])
{
    std::string str = fmt::format("{0} + {1} = {2}", 1, 2, 3);
    std::cout << "str=" << str.c_str() << "\n\n";

    return 0;
}
