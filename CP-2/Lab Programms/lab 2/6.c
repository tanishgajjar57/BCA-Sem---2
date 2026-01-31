//6. W.A.P. to perform an insertion operation on 1 – D array. (C) 

#include<stdio.h>
void main()
{
	int arr[100],i,el,pos,n;
	
	printf("enter array size\n");
	scanf("%d" ,&n);
	
	printf("\n");
	for(i=0;i<n;i++)
	{
		scanf("%d" ,&arr[i]);
	}
	
	
	
	printf("\nenter position\n");
	scanf("%d" ,&pos);	
	
	printf("\nenter element\n");
	scanf("%d" ,&el);
	
	printf("\n");

	for(i=n;i>=pos-1;i--)
	{
		arr[i+1]=arr[i];
	}
	arr[pos-1]=el;
	
	for(i=0;i<=n;i++)
	{
		printf("%d\n" ,arr[i]);
	}
}
