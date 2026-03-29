//1. Add two matrices using Pointers. (A) 

#include<stdio.h>
void main()
{
	int a1[3][3],a2[3][3],a3[3][3],*p1[3][3],*p2[3][3],i,j;
	
	printf("enter 1st matrix= \n");
	
	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		{
			scanf("%d" ,&a1[i][j]);
			p1[i][j]=&a1[i][j];
		}
	}
	
	printf("enter 2st matrix= \n");

	
	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		{
			scanf("%d" ,&a2[i][j]);
			p2[i][j]=&a2[i][j];
		}
	}
		printf("addition of matrix= \n");

	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		{
			a3[i][j]=*p1[i][j]+*p2[i][j];
		}
	}
	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		{
			printf("%d  " ,a3[i][j]);
		}
		printf(" \n");
	}
}
