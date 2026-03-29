//2. Demonstrate int, float, double and char pointer. (A) 

#include<stdio.h>
void main()
{
	int a,*p1;
	float b,*p2;
	char c,*p3;
	double d,*p4;
	
	printf("enter value\n");
	scanf("%d" ,&a);
	
	printf("enter value\n");
	scanf("%f" ,&b);
	
	
	printf("enter value\n");
	scanf(" %c" ,&c);
	
	printf("enter value\n");
	scanf("%lf" ,&d);
	
	p1=&a;
	p2=&b;
	p3=&c;
	p4=&d;
	
	printf("int value: %d \n" ,*p1);
	printf("int address: %u \n" ,p1);
	
	printf("float value: %f \n" ,*p2);
	printf("float address: %u \n" ,p2);

	printf("char value: %c \n" ,*p3);
	printf("char address: %u \n" ,p3);

	printf("double value: %lf \n" ,*p4);
	printf("double address: %u \n" ,p4);

	
	
	
	

}
