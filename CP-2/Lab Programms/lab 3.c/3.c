//3.Write a program to count simple interest using function..
//with argument , no return type..

#include<stdio.h>
void interest(float p,float t ,float r);
void main ()
{
	float p,r,t;
	printf("enter your amount\n");
	scanf("%f" ,&p);
	
	printf("enter your rate\n");
	scanf("%f" ,&r);
	
	printf("enter your time\n");
	scanf("%f" ,&t);
	intrest(p,r,t);
}

void interest(float p,float t ,float r)
{
	float si;
	
	
	si=(p*r*t)/100;
	
	printf("simple interest: %f" ,si);
}
