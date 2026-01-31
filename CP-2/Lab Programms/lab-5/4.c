//4. Swap elements of two integer arrays using user user-defined function. (B) 

#include<stdio.h>
int a[5],b[5],temp,i;
void swap(int a[],int b[]);
void main()
{
	printf("enter array\n");
	
	for(i=0;i<5;i++)
	{
		scanf("%d" ,&a[i]);
	}
	printf("\n");
	for(i=0;i<5;i++)
	{
		scanf("%d" ,&b[i]);
	}
	printf("\n");
	
	swap(a,b);
	
	
	printf("1st array:\n");	
	for(i=0;i<5;i++)
	{
		printf("%d " ,a[i]);
	}
	printf("\n");
	
	printf("\n2nd array:\n");
	for(i=0;i<5;i++)
	{
		printf("%d " ,b[i]);
	}
	printf("\n");
}
void swap(int a[],int b[])
{
	for(i=0;i<5;i++)
	{
		temp=a[i];
		a[i]=b[i];
		b[i]=temp;
	}
}	
