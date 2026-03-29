//5. Swap two arrays using pointers. (C) 

#include<stdio.h>
void main(){
	int i,a[5],b[5],*p1[5],*p2[5],temp=0;
	
	printf("enter array a\n");
	
	for(i=0;i<5;i++)
	{
		scanf("%d" ,&a[i]);
		p1[i]=&a[i];	
	}
	printf("enter array b\n");
	for(i=0;i<5;i++)
	{
		scanf("%d" ,&b[i]);
		p2[i]=&b[i];	
	}
	
	for(i=0;i<5;i++)
	{
		temp=*p1[i];
		*p1[i]=*p2[i];
		*p2[i]=temp;
	}
	
	printf("\n swap array a\n");
	
	for(i=0;i<5;i++)
	{
		printf("%d \n" ,a[i]);
	}
		
	printf("\n swap array b\n");
	
	for(i=0;i<5;i++)
	{
		printf("%d \n" ,b[i]);
	}
}
