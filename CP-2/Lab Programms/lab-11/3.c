//3. Find the length of the string using Pointers. (A) 


#include<stdio.h>
void main()
{
	char str[50],*p;
	int n,i,len=0;
	
	printf("enter your string\n");
	gets(str);
	
	p=&str[0];
	for(i=0;p[i]!='\0';i++)
	{
		len++;
	}
	
	printf("string length is = %d" ,len);
}
