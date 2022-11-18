#include <iostream>
#include <bits/stdc++.h>

// Find duplicate elements in array
void duplicateElements(int* arr, int size)
{
    int* copied = new int[size];
    for(int i = 0; i < size ; i++)
    {
        copied[i] = arr[i];
    }

    for(int i = 0; i < size ; i++)
    {
        int cnt = 0;
        for (int j = 0; j < size ; j++)
        {
            if (arr[i] == copied[j])
            {
                copied[j] = INT_MIN;
                cnt++;
            }
        }

        if (cnt > 1 )
        {
            std::cout << arr[i] << " -> " << cnt << std::endl;
        }
        
    }
}
int main()
{

    int n;

    std::cout << "Find duplicate elements in array" << std::endl;
    std::cout << "Enter array size : " ;
    std::cin>>n;

    int* arr1 = new int[n];

    std::cout << "Enter elements of array : ";
    for (int i = 0 ; i < n ; i++)
	{
		std::cin>>arr1[i];
	}

    duplicateElements(arr1, n);

    std::cin.get();
    std::cin.get();
    
    return 0;
}