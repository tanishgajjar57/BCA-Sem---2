//3. W.A.P. to calculate the length of a string without using the inbuilt function. (A) 

#include<stdio.h>
void main()
{
	char str[50];
	int n,i,len=0;
	
	printf("enter your string\n");
	gets(str);
	
	for(i=0;str[i]!='\0';i++)
	{
		len++;
	}
	
	printf("string length is = %d" ,len);
}
