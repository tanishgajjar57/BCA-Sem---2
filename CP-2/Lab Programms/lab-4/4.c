//4. Perform the task of reversing a number and return that number, then check given number is a palindrome or not. (B) 

#include<stdio.h>
int rev(int n);
void main()
{
	int n ,a;
	printf("enter number\n");
	scanf("%d" ,&n);
	
	a=rev(n);
	printf("reverse number is:%d\n" ,a);
	
	if(n==a)
	{
		printf("number is palindrome");
	}
}
int rev(int n)
{
	int a=0,i,ld;
	
	for(i=1;n>0;i++)
	{
		a=a*10;
		ld=n%10;
		n=n/10;
		a=a+ld;
	}
	return a;
}
