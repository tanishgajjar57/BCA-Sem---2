//2. Create a structure book with book title, author, publication, and price. Read the data of 3 books and display. (A) 

#include<stdio.h>

struct book{
	char title[50];
	char author[50];
	char publication[50];
	float price;
}b[3];
void main()
{
	int i,a;
	for(i=0;i<3;i++)
	{
		printf("\n%d book\n" ,i+1);
		printf("enter book title ,author ,publication ,price\n");
		scanf("%s" ,b[i].title);
		scanf("%s" ,b[i].author);
		scanf("%s" ,b[i].publication);
		scanf("%f" ,&b[i].price);	
	}
	for(i=0;i<3;i++)
	{
		printf("\n%d book\n" ,i+1);
		printf("Title: %s\n" ,b[i].title);
		printf("Author: %s\n" ,b[i].author);
		printf("Publication: %s\n" ,b[i].publication);
		printf("Price: %f\n" ,b[i].price);
	}
}
