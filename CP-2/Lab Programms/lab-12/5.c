//5. Allocate dynamic memory for a structure variable. (C) 


#include<stdio.h>
struct student {
	
	int id;
	float mark;
	
};
void main ()
{
	struct student *p;
	
	p=(struct student *) malloc (sizeof(struct student));
	
	if(p==NULL)
	{
		printf("memory faild\n");
	}
	p->	id =10;
	p->mark =57.07;
	
	printf("id: %d \n" ,p->id);
	printf("mark: %f \n" ,p->mark);
	
	free(p);
}
