#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char** split(char* str, char delim, int* wordCount)
{
    int cnt = 0;
    for (int i = 0; i < (int)strlen(str) ; i++)
    {
        if (str[i] == delim)
        {
            cnt++;
        }
    }

    char** wordList = (char**)malloc(sizeof(char*) * (cnt+1));
    if (wordList == NULL)
    {
        exit(-1);
    }

    
    int idx = 0;
    char* token = strtok(str, &delim);

    // traverse over tokens 
    while( token != NULL ) {
        wordList[idx] = (char*)malloc(sizeof(char) * strlen(token));
        if (wordList[idx] == NULL)
        {
            exit(-1);
        }
        memcpy(wordList[idx], token, sizeof(char) * strlen(token));   
        token = strtok(NULL, &delim);
        idx++;
    }

    *wordCount = cnt+1;
    return wordList;

}

int main()
{
    char str[100];
    
    char del = ' ';

    printf("Split words from given string\n");
    printf("Enter a string : ");
    scanf("%[^\n]s",str);
    printf("Words : \n");
    

    int size;
    char** arr = split(str, del, &size);

    for (int i = 0 ; i < size ; i++)
    {
        printf("%d-) %s\n", i+1, arr[i]);
    }

    getchar();
    getchar();
    
    return 0;
}