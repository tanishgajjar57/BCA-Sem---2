//1. Create, declare and initialise the structure employee. (A) 


#include<stdio.h>
struct employee{
	int id;
	char name[50];
	float salary;
}e1;

void main()
{
	printf("enter employee Id\n");
	printf("Enter employee name\n");
	printf("enter employee salary\n");
	
	scanf("%d" ,&e1.id);
	scanf("%s" ,e1.name);
	scanf("%f" ,&e1.salary);
	
	printf("Employee Details\n");
	
	printf("ID: %d\n" ,e1.id);
	printf("Name: %s\n" ,e1.name);
	printf("Salary: %f\n" ,e1.salary);
	
}

