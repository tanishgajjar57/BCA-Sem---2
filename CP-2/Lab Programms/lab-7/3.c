//3. Create structure student with name, percentage and age. Read data of N students using array of structure. Arrange student  data alphabetically and print all data.
#include<stdio.h>
#include<string.h>
struct student{
	
	char name[50];
	float pr;
	int age;
};
void main()
{
	int i,j,n;
	
	printf("enter n number:");
	scanf("%d" ,&n);
	
	struct student s[n];
	struct student temp;
	
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
		for(j=i+1;j<n;j++)
		{
			if(strcmp(s[i].name,s[j].name)>0)
			{
				temp=s[i];
				s[i]=s[j];
				s[j]=temp;
				
			}
		}	
	}
	for(i=0;i<n;i++)
	{
		printf("\nName: %s\n" ,s[i].name);
		printf("Parcentage: %f\n" ,s[i].pr);
		printf("Age: %d\n" ,s[i].age);
	}
	
}
