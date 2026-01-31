//3. Swap two numbers using call by reference. (A) 

#include<stdio.h>
void swap(int *,int *);
void main()
{
	int a,b;
	
	printf("enter two numbers A , B \n");
	scanf("%d %d" ,&a ,&b);
	
	printf("before swaping \na=%d \nb=%d\n" ,a,b);
	
	swap (&a,&b);
	printf("after swaping \na=%d \nb=%d" ,a,b);
}
void swap(int *a,int *b)
{
	int temp;
	
	temp=*a;
	*a=*b;
	*b=temp;
}
