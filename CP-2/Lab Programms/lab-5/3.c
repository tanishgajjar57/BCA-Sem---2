//3. Find the power of any number using recursion. (A) 

#include<stdio.h>
int power(int ,int);
void main()
{
	int x,y;
	
	printf("enter number \n");
	scanf("%d" ,&x);
	
	printf("enter power \n");
	scanf("%d" ,&y);
	
	printf("power: %d" ,power(x,y));
}
int power(int x,int y)
{
	if(y==0)
	{
		return 1;	
	}	
	else
	{
		return x*power(x,y-1);
	}
		
}

