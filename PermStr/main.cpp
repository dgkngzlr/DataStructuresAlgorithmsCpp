#include <iostream>
#include <string>

using namespace std;

void strPerm(string word, int wordLength, char* perm, int* bitMap, int idx)
{   
    if ( idx == static_cast<int>(word.length()) )
    {
        perm[word.length()] = '\0';
        cout << perm << endl;
        return;
    }

    else
    {
        
        for (int i = 0 ; i < wordLength ; i++)
        {
            if (bitMap[i] == 0)
            {
                perm[idx] = word.at(i);
                bitMap[i] = 1;
                strPerm(word, word.length(), perm, bitMap, idx + 1);
                bitMap[i] = 0;
            }
            
            
        }
        
    }
}

int main()
{
    string inp;

    cout << "Print permutation of given word" << endl;
    cout << "Enter word : ";
    getline(cin, inp);

    char* perm = new char[inp.length() + 1];
    for (size_t i = 0 ; i < inp.length() + 1 ; i++)
    {
        perm[i] = '\0';
    }

    int* bitMap = new int[inp.length()];
    for (size_t i = 0 ; i < inp.length() ; i++)
    {
        bitMap[i] = 0;
    }
    
    cout << "Permutations :" << endl;

    strPerm(inp, inp.length(), perm, bitMap, 0);

    return 0;
}