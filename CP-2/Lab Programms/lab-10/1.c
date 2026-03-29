//1. Swap the values of two numbers using a pointer. (A) 
#include<stdio.h>
void main()
{
	int a=10,b=20,*p1,*p2,temp;
	
	printf("a=%d \n b=%d\n" ,a,b);
	
	p1=&a;
	p2=&b;
	
	temp=*p1;
	*p1=*p2;
	*p2=temp;
	
	printf("swapping number\n");
	
	printf("a=%d \n b=%d" ,a,b);
}
