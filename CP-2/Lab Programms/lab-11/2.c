//2. Print the sum of columns of a matrix using Pointers. (A) 


#include<stdio.h>
void main()
{
	int j1[3][3],j2[3][3],*p1[3][3],sum[3]={0,0,0},i,j,n=3;
	
	printf("Enter 1st matrix = \n");
	
	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++)
		{
		scanf("%d",&j1[i][j]);
		
		p1[i][j]=&j1[i][j];
		
		sum[j]=sum[j]+*p1[i][j];
		
		}

		printf("\n");
	}
	
	printf("Sum = %d \t %d \t %d ",sum[0],sum[1],sum[2]);
	
}
