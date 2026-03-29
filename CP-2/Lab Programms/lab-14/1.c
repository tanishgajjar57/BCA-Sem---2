//1. Create, open and close a file. (A) 


#include<stdio.h>
void main()
{
	FILE *fptr;
	
	fptr=fopen("hello.txt","w");
	
	if(fptr==NULL)
	{
		printf("file is not available\n");
	}
	else
	{
		printf("file is available\n");	
	}
	fclose(fptr);
}
