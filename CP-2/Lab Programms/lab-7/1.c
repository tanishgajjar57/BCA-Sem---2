//1. Create structure student with name, percentage and age. Read data of 5 students using array of structure. (A) 

#include<stdio.h>
struct student{
	
	char name[50];
	float pr;
	int age;
}s[5];
void main()
{
	int i;
	for(i=0;i<5;i++)
	{
		printf("enter %d name:" ,i+1);
		scanf("%s" ,s[i].name);
		
		printf("\nenter percentage:");
		scanf("%f" ,&s[i].pr);
		
		printf("\nenter age:\n");
		scanf("%d" ,&s[i].age);
	}
	for(i=0;i<5;i++)
	{
		printf("\n%d name: %s\n" ,i+1,s[i].name);
		printf("percantage: %f\n" ,s[i].pr);
		printf("age: %d\n" ,s[i].age);
	}
}



