//5. Find Maximum Element in a 2-D Array Using Pointers. (C) 

#include<stdio.h>
void main()
{
	int a[2][2],i,j,max=0,*p[2][2];
	
	for(i=0;i<2;i++)
	{
		for(j=0;j<2;j++)
		{
			scanf("%d" ,&a[i][j]);
			p[i][j]=&a[i][j];
		}
	}
	for(i=0;i<2;i++)
	{
		for(j=0;j<2;j++)
		{
			if(*p[i][j]>max)
			{
				max=*p[i][j];
			}	
		}
	}
	printf("maximum element: %d" ,max);
	
}
