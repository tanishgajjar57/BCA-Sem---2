//4. Demonstrate nested structure. (B) 

#include<stdio.h>
struct student{
	char name[50];
	int id;
};
struct person{
	int mark;
	
	struct student s1;
};
void main()
{
	struct person s2;
	
	printf("enter Name\n");
	scanf("%s" ,s2.s1.name);
	
	printf("enter Id\n");
	scanf("%d" ,&s2.s1.id);
	
	printf("enter mark\n");
	scanf("%d" ,&s2.mark);
	
	printf("Name: %s\n" ,s2.s1.name);
	printf("Id: %d\n" ,s2.s1.id);
	printf("Mark: %d\n" ,s2.mark);
}
