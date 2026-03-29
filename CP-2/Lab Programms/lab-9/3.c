//3. Calculate sum of two numbers using pointer. (A) 

#include<stdio.h>
void main()
{
	
	int a,b,*p1,*p2,sum;
	
	printf("enter value\n");
	scanf("%d" ,&a);
	
	printf("enter value\n");
	scanf("%d" ,&b);
	
	p1=&a;
	p2=&b;
	
	sum=*p1+*p2;
	
	printf("Sum: %d" ,sum);
}
