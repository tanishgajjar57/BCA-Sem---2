//4. Copy one string into another string using Pointers. (B) 

#include<stdio.h>
void main()
{
	char str1[50],str2[50],*p;
	int i;
	
	printf("enter your string\n");
	gets(str1);
	
	for(i=0;str1[i]!='\0';i++)
	{
		p=&str1[i];
		str2[i]=*p;
	}
	str2[i]='\0';
	
	printf("copy string\n");
	puts(str2);	
}
