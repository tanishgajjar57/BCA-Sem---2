//1. Allocate and de-allocate memory for int, char and float variables at run time. (A) 

#include<stdio.h>
void main()
{
	int *p1;
	float *p2;
	char *p3;
	
	p1=(int *)malloc(sizeof(int));
	printf("enter int:");
	scanf("%d",p1);
	printf("\n int: %d",*p1);
	
	p2=(float *)malloc(sizeof(float));
	printf("\nenter float:");
	scanf("%f",p2);
	printf("\nfloat: %f",*p2);
	
	p3=(char *)malloc(sizeof(char));
	printf("\nenter char:");
	scanf(" %c",p3);
	printf("\nchar: %c",*p3);
}
