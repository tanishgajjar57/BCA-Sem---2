//2. Create structure student with name, percentage and age. Read data of N students using array of structure. Print details of student with maximum percentage. 
#include<stdio.h>
struct student{
	
	char name[50];
	float pr;
	int age;
};
void main()
{
	int i,n,max=0;
	
	printf("enter n number:");
	scanf("%d" ,&n);
	
	struct student s[n];
	
	for(i=0;i<n;i++)
	{
		printf("enter %d name:" ,i+1);
		scanf("%s" ,s[i].name);
		
		printf("\nenter percentage:");
		scanf("%f" ,&s[i].pr);
		
		printf("\nenter age:");
		scanf("%d" ,&s[i].age);
	}
	for(i=0;i<n;i++)
	{
		if(s[i].pr>s[max].pr)
		{
			max=i;
		}
	}
	
	printf("\nName: %s\n" ,s[max].name);
	printf("Parcentage: %f\n" ,s[max].pr);
	printf("Age: %d\n" ,s[max].age);
	
}



