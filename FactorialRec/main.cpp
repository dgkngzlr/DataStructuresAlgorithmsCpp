/*
* Calculate the factorial of number n (n!)
*/
#include <iostream>

unsigned long long factorial(int n)
{
    if (n < 1)
    {
        return 1;
    }

    return factorial(n - 1) * n;
}
int main()
{
    int n;

    std::cout << "Factorial of given number" << std::endl;
    std::cout << "Enter number : " ;
    std::cin >> n;

    unsigned long long  fact = factorial(n);

    std::cout << n << "! = " << fact << std::endl;
    std::cin.get();
    std::cin.get();

    return 0;
}