//4. Create a structure student with roll number, name and marks of 3 subjects. Read data of N students using array of structure. 
//Calculate total and percentage for each student. Print the details of the top 3 students based on highest total marks. Also 
//print class average percentage. (C) 

#include<stdio.h>
struct student {
	int rn;
	char name[30];
	int mark[3];
	int total;
	float pr;
};
void main()
{
	int n,i,j;
	printf("enter total students number\n");
	scanf("%d" ,&n);
	
	struct student s[n];
	
	struct student temp;
	
	for(i=0;i<n;i++)
	{
		printf("\nEnter roll_number\n");
		scanf("%d" ,&s[i].rn);
		printf("Enter student name\n");
		scanf("%s" ,s[i].name);
		
		printf("enter three marks\n");
		s[i].total=0;
		s[i].pr=0;
	 	
		
		for(j=0;j<3;j++)
		{
			printf("\nenter subject %d: " ,j+1);
			scanf("%d" ,&s[i].mark[j]);
			
			s[i].total=s[i].total+s[i].mark[j];
		}
		s[i].pr=s[i].total/3;
		
		printf("Total_Mark: %d\n" ,s[i].total);
		printf("Parcantage: %f\n" ,s[i].pr);
	}
	
	printf("-------------------\n");
	printf("Top 3 Studentss_____\n");
	
	for(i=0;i<n;i++)
	{
		for(j=i+1;j<n;j++)
		{
			if(s[i].total<s[j].total)
			{
				temp=s[i];
				s[i]=s[j];
				s[j]=temp;
			}
		}	
	}
	for(i=0;i<3;i++)
	{
		printf("\nRoll_Number: %d\n" ,s[i].rn);
		printf("Name: %s\n" ,s[i].name);

		for(j=0;j<3;j++)
		{
			printf("%d mark: %d\n" ,j+1,s[i].mark[j]);
		}
		printf("Total_Mark: %d\n" ,s[i].total);
		printf("Parcantage: %f\n" ,s[i].pr);
		printf("--------------------\n");
	}
}
