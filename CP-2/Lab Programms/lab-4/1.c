//1. Return the maximum of three floating-point numbers. (A) 


#include<stdio.h>
float max(float,float,float);
void main()
{
	float num,a,b,c;
	printf("enter number A ,B ,C\n");
	scanf("%f %f %f" ,&a ,&b ,&c);
	
	num=max(a,b,c);
	printf("maximum number: %f \n" ,num);
}

float max(float a,float b,float c)
{
	if(a>b && a>c)
	{
		return a;
	}
	else if(b>a && b>c)
	{
		return b;
	}
	else 
	{
		return c;
	}
}
