/*
* Find a pair in given list which is sum yields K.
*/
#include <iostream>

// Insertion sort which big-o is O(n^2)
int* sort(int* arr, int size)
{
    int* sorted = new int[size];
    for (int i = 0; i < size ; i++)
    {
        sorted[i] = arr[i];
    }

    for (int i = 1 ; i < size ; i++)
    {
        int temp = sorted[i];

        int j = i - 1;
        while  (j >= 0)
        {
            if ( temp < sorted[j])
            {
                sorted[j + 1] = sorted[j];
            }
            else
            {
                break;
            }

            j--;
        }

        sorted[j + 1] = temp;
    }

    return sorted;
}

// Find a pair in a given list which is sum yields K
void summedK(int* arr1, int size, int targetSum)
{
    int* sorted = sort(arr1, size);
    
    bool isFound = false;
    int i = 0;
    int j = size - 1;
    while (i <= j)
    {
        if (sorted[i] + sorted[j] < targetSum)
        {
            i++;
        }
        else if (sorted[i] + sorted[j] > targetSum)
        {
            j--;
        }
        else
        {
            isFound = true;
            std::cout << "Pair found !" << std::endl;
            std::cout << sorted[i] << " + " << sorted[j] << " = " \
                      << sorted[i] + sorted[j] << std::endl;
            break;
        }
    }

    if (!isFound)
    {
        std::cout << "Pair is not found !" << std::endl;
    }
    
}

int main()
{
    int n;
    int K;

    std::cout << "Find a pair in given list which is sum yields K" << std::endl;
    std::cout << "Enter array size : " ;
    std::cin>>n;

    int* arr1 = new int[n];

    std::cout << "Enter elements of array : ";
    for (int i = 0 ; i < n ; i++)
	{
		std::cin>>arr1[i];
	}

    std::cout << "Enter target sum : " ;
    std::cin>>K;

    summedK(arr1, n, K);

    std::cin.get();
    std::cin.get();
    return 0;
}