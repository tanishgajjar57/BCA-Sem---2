//5. Find the reverse of any number using recursion. (C) 

#include<stdio.h>
int rev(int n);
void main()
{
	int n;
	printf("enter number \n");
	scanf("%d" ,&n);
	
	printf("reverse number: %d" ,rev(n));
}
int rev(int n)
{
	int ld,reverse;
	if(n==0)
	{
		return 1;
	}
	else
	{
		ld=n%10;
		n=n/10;
		reverse=(n*10)+ld;
	}
	return reverse;
	
}
