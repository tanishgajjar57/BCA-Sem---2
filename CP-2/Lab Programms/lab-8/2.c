//2. Define a union called Players which describes details like p_name, team, score, average. Write a program to read data for 3  
//players and print that data.

#include<stdio.h>
union players{
	char p_name[50];
	char team[50];
	int score;
	float avg; 
}p[3];
void main()
{
	int i;
	for(i=0;i<3;i++)
	{
		printf("\nenter %d name:" ,i+1);
		scanf("%s" ,p[i].p_name);
		
		printf("P_name: %s\n" ,p[i].p_name);
		
		printf("\nenter team:" );
		scanf("%s" ,p[i].team);
		
		printf("Team: %s\n" ,p[i].team);
		
		printf("\nenter score:");
		scanf("%d" ,&p[i].score);
		
		printf("Score: %d\n" ,p[i].score);
		
		printf("\nenter average:");
		scanf("%f" ,&p[i].avg);
		
		printf("Average: %f\n" ,p[i].avg);
	}

	
}
