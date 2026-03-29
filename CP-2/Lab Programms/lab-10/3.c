//3. Find even and odd numbers in array using pointer. (A) 

#include<stdio.h>
void main()
{
	int i,n,even=0,odd=0;
	
	printf("enter number\n");
	scanf("%d" ,&n);
	
	int a[n],*p[n];
	
	for(i=0;i<n;i++)
	{
		scanf("%d" ,&a[i]);
		p[i]=&a[i];
	
	if(*p[i]%2==0)
	{
		even++;
	}
	else
	{
		odd++;
	}
	
	}
	printf("even number: %d" ,even);
	printf("odd number: %d" ,odd);
	
	
}
