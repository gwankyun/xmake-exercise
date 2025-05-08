#include <spdlog/spdlog.h>

int main(int _argc, char* _argv[])
{
    std::string log_format{"[%C-%m-%d %T.%e] [%^%L%$] [%-20!!:%4#] %v"};
    spdlog::set_pattern(log_format);
    SPDLOG_INFO("XMake");
    return 0;
}
