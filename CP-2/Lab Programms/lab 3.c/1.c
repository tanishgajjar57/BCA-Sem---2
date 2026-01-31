//1. Add two numbers using a user-defined function. (A)  


#include<stdio.h>
int sum(int,int);
void main()
{
	int a,b;
	printf("enter a number \n");
	scanf("%d" ,&a);
	
	printf("enter b number \n");
	scanf("%d" ,&b);
	
	
	
	printf("sum= %d" ,sum(a,b));
	
}
int sum(int a,int b)
{
	return a+b;
}
