//3. Count chars, spaces, tabs and new lines in a file. (A) 


#include<stdio.h>
void main()
{
	FILE *fptr;
	int countchar=0, countspace=0, counttab=0, countline=0;
	char ch;
		
	fptr=fopen("hello.txt","r");

	while((ch=fgetc(fptr))!=EOF) 
	{
		countchar++;
		}
	while((ch=fgetc(fptr))==' ') 
	{
		countspace++;
		}	
	
	printf("%d\n" ,countchar);
	printf("%d" ,countspace);
}
