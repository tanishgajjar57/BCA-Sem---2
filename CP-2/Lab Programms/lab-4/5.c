//5. Find all prime numbers between given interval using functions. (C) 

#include<stdio.h>
void prime(int,int);
void main()
{
	int a,b;
	
	printf("enter number");
	scanf("%d %d" ,&a ,&b);
	
	prime(a,b);
	
}
void prime(int a,int b)
{
	int i,j,count=0;
	
	for(i=a;i<=b;i++)
	{
		count = 0;
		for(j=1;j<=i;j++)
		{
			if(i%j==0)
			{
				count++;
			}
		}
			if(count==2)
			{
				printf("%d\n" ,i);
			}
	}

}
