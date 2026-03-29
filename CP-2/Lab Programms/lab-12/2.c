//2. Calculate the sum of n numbers entered by the user using malloc (). (A) 

#include<stdio.h>
void main()
{
	int n,i,sum=0,*ptr;
	
	printf("enter n number:");
	scanf("%d" ,&n);
	
	ptr=(int *)malloc(n*sizeof(int));
	
	for(i=0;i<n;i++)
	{
		scanf("%d" ,(ptr+i));
		sum=sum+ *(ptr+i);
	}
	
	printf("sum=%d" ,sum);
	free(ptr);
}
