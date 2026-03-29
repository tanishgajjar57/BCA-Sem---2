//3. Define a function like Macro that should use printf. Define Macro PRINT to print the given integer argument. (A) 

#include<stdio.h>
#define print(val) (printf("Value is: %d" ,val))

void main()
{
	int a=10;
	
	print(a);
}
