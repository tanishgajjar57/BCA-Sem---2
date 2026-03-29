#include<stdio.h>
void main()
{
    FILE *fptr;
    char ch[50];
    int n=2,i;
    fptr=fopen("h1.txt","r");
    while(fscanf(fptr,"%s",ch)!=EOF)
    {
        printf("data read Successfully");
    }
    fclose(fptr);
} 