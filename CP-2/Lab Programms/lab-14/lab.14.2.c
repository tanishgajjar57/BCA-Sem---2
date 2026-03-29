#include<stdio.h>
void main()
{
    FILE *fptr;
    char ch[50];
    int n=2,i;
    fptr=fopen("h1.txt","w");
    for ( i = 0; i < n; i++)
    {
        puts("Enter Name");
        gets(ch);
        fprintf(fptr,"%d.%s",i+1,ch);
    }
    fclose(fptr);
    
}