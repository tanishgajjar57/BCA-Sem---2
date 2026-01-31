//1.  Find the factorial of a number using a function and a recursive function. (A) 

#include<stdio.h>
int fact(int);
void main()
{
	int n,factorial;
	
	printf("enter a number");
	scanf("%d" ,&n);
	
	factorial=fact(n);
	
	printf("factorial: %d" ,factorial);
}
int fact(int n)
{
	if (n==1)
	{
		return 1;
	}
	else
	{
		return n*fact(n-1);
	}
}
