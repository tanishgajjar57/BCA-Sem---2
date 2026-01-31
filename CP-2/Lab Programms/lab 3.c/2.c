//2. Find the maximum number between two numbers using a function. (A)  

#include<stdio.h>
int max(int,int);
void main()
{
	int a,b;
	printf("enter a number \n");
	scanf("%d" ,&a);
	
	printf("enter b number \n");
	scanf("%d" ,&b);
	
	
	
	printf("max= %d" ,max(a,b));
	
}
int max(int a,int b)
{
	if(a>b)
	{
		return a;
	}
	else 
	{
		return b;
	}
}
