//4. Print positive and negative numbers in array using pointers. (B) 

#include<stdio.h>
void main()
{
	int i,n,positive=0,negative=0;
	
	printf("enter number\n");
	scanf("%d" ,&n);
	
	int a[n],*p[n];
	
	for(i=0;i<n;i++)
	{
		scanf("%d" ,&a[i]);
		p[i]=&a[i];
	
	if(*p[i]>0)
	{
		
		positive++;
	}
	else
	{
		
		negative++;
	}
	
	}
	
	for(i=0;i<n;i++)
	{
		if(*p[i]>0)
		{
			printf("positive: %d\n" ,*p[i]);
		
		}
	else
		{
		printf("negative: %d\n" ,*p[i]);
		}
	
	}
	printf("positive number: %d\n" ,positive);
	printf("negative number: %d" ,negative);
	
	
}
