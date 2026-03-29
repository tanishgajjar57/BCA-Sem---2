//5. Sort array using pointers. (C) 


#include<stdio.h>
void main()
{
	int a[50],*p[50],n,i,j,temp;
	
	printf("enter element number");
	scanf("%d" ,&n);
	
	for(i=0;i<n;i++)
	{
		scanf("%d" ,&a[i]);
		p[i]=&a[i];
	}
	
	for(i=0;i<n;i++)
	{
		for(j=i+1;j<n;j++)
		{
			if(*p[i]>*p[j])
			{
				temp=*p[i];
				*p[i]=*p[j];
				*p[j]=temp;
			}
		}
	}
	printf("ascending order = \n");
	for(i=0;i<n;i++)
	{
		printf("%d\n" ,*p[i]);
	}
}
