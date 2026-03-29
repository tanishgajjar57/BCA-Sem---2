//3. Define a structure called Players which describes details like p_name, team, score, average. Write a program to read data for  
//N players and arrange p_name in alphabetical order. (B)

#include<stdio.h>
#include<string.h>

struct players{
	char p_name[50];
	char team[50];
	int score;
	float avg; 
};
void main()
{
	int i,n,j;
	
	printf("enter number\n");
	scanf("%d" ,&n);
	
	struct players p[n],temp;
	
	for(i=0;i<n;i++)
	{
		printf("\nenter %d name:" ,i+1);
		scanf("%s" ,p[i].p_name);
		
		printf("\nenter team:" );
		scanf("%s" ,p[i].team);
		
		printf("\nenter score:");
		scanf("%d" ,&p[i].score);
		
		printf("\nenter average:");
		scanf("%f" ,&p[i].avg);
	}
	
	for(i=0;i<n;i++)
	{
		for(j=i+1;j<n;j++)
		{
			if(strcmp(p[i].p_name,p[j].p_name)>0)
			{
				temp=p[i];
				p[i]=p[j];
				p[j]=temp;	
			}
		}
	}

	printf("\nyour data:\n");
	
	for(i=0;i<n;i++)
	{
		printf("\nP_name: %s \nTeam: %s \nScore: %d \nAverage: %f \n" ,p[i].p_name,p[i].team,p[i].score,p[i].avg);
	}
}
