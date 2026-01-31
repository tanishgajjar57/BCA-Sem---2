//3. Demonstrate the difference between structure and union. (A) 

#include<stdio.h>
struct details{
	char name[50];
	char surname[50];
}d1;

union uni_details{
	char name[50];
	char surname[50];
}d2;
void main()
{
	printf("sturcture\n");
	printf("\nenter Name\n");
	scanf("%s" ,d1.name);
	printf("enter surname\n");
	scanf("%s" ,d1.surname);
	
	printf("Name: %s\n" ,d1.name);
	printf("Surname: %s\n" ,d1.surname);
	
	printf("Union\n");
	printf("\nenter Name\n");
	scanf("%s" ,d2.name);
	printf("enter surname\n");
	scanf("%s" ,d2.surname);
	
	printf("Name: %s\n" ,d2.name);
	printf("Surname: %s" ,d2.surname);
	
}
