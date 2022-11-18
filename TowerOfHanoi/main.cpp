/*
* Tower of Hanoi Puzzle Solver
*/
#include <iostream>

/*
* n: Number of ring.
* src: Source rod labeled with 1.
* aux: Auxiliary rod labeled with 2.
* target: Target rod labeled with 3.
*/
void toh(int n, int src, int aux, int target)
{
	if (n == 1)
	{
		printf("(%d -> %d)\n", src, target);
	}

	else if (n == 2)
	{
		toh(1, src, target, aux);
        printf("(%d -> %d)\n", src, target);
		toh(1, aux, src, target);
	}

	else
	{
		toh(n-1, src, target, aux);
        printf("(%d -> %d)\n", src, target);
		toh(n-1, aux, src, target);
	}
}

int main()
{
	int n;

    std::cout << "Tower of Hanoi Puzzle" << std::endl;
    std::cout << "1 => Source rod\n" << "2 => Auxiliary rod\n" << "3 => Target rod\n" << std::endl;
    std::cout << "Enter number of rings : " ;
    std::cin >> n;

    std::cout << "Order of displacement : " << std::endl;
    toh(n,1,2,3);

    
    std::cin.get();
    std::cin.get();

    return 0;
}