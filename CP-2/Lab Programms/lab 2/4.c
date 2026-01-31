//4. W.A.P. to reverse a string without using the built-in function. (B) 

#include<stdio.h>
void main()
{
	char str[50];
	int i,len=0;
	
	printf("enter your string\n");
	gets(str);
	
	for(i=0;str[i]!='\0';i++)
	{
		len++;
	}
	
	for(i=len-1;i>=0;i--)
	{
		printf("%c" ,str[i]);
	}
	

}
