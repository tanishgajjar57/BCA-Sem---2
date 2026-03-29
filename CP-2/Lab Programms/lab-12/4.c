//4. Write a program that demonstrates the use of realloc (). (B) 

#include<stdio.h>
void main()
{
	int *p,i,n1,n2;
		printf("Enter Size Here:\n");
		scanf("%d",&n1);
		p=(int*)malloc(n1*sizeof(int));
		printf("Enter Elements \n");
		for(i=0;i<n1;i++)
		{
			scanf("%d",&p[i]);
		}
			printf("\nEnter Updated Size Here: ");
			scanf("%d",&n2);
			
			p=realloc(p,n2);
			printf("\nEnter Elements Again \n");
		
		for(i=n1;i<n2;i++)
		{
			scanf("%d",&p[i]);
		}
		
		
		printf("\Final Elements are:\n");
		
		for(i=0;i<n2;i++)
		{
			printf("\n%d",p[i]);
		}
		free(p);
}
