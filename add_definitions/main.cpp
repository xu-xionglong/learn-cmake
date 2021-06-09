#include <iostream>

int main(int argc, char *argv[])
{
#ifdef TEST_DEF
    std::cout << "DEFINITION FOUND!" << std::endl;
#else
    std::cout << "DEFINITION NOT FOUND!" << std::endl;
#endif
   
#ifdef DEFINITION_VALUE
    std::cout << "DEFINITION VALUE IS: "<< DEFINITION_VALUE << std::endl;
#endif
   return 0;
}
