//2.  Pass an array in a function to print the array elements. (A) 

#include<stdio.h>
void array(int a[10]);
void main()
{
	int a[10],i;
	
	printf("enter array\n");
	
	for(i=0;i<10;i++)
	{
		scanf("%d" ,&a[i]);
	}
	printf("\n");
	array(a);
}
void array(int a[])
{
	int i;
	for(i=0;i<10;i++)
	{
		printf("%d" ,a[i]);
	}
}
