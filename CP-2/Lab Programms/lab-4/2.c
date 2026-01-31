//2. Swap two numbers using call by value. (A) 

#include<stdio.h>
void swap(int,int);
void main()
{
	int a,b;
	
	printf("enter two number a ,b:\n");
	scanf("%d %d" ,&a ,&b);
	
	swap(a,b);
	
	printf("after swaping values \na=%d \nb=%d" ,a,b);
}
void swap(int a,int b)
{
	int temp;
	
	temp=a;
	a=b;
	b=temp;
}
