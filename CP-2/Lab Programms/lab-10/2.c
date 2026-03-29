//2. Store n elements in an array and print the elements using pointer.(A) 

#include<stdio.h>
void main()
{
	int i,n;
	printf("enter number\n");
	scanf("%d" ,&n);
	
	int a[n],*p[n];
	
	printf("enter array\n");
	
	for(i=0;i<n;i++)
	{
		scanf("%d" ,&a[i]);
		p[i]=&a[i];
	}
	for(i=0;i<n;i++)
	{
		printf("\n%d" ,*p[i]);
	}
}
