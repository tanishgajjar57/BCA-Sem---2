//4. Copy one array to another using pointers. (B) 
#include<stdio.h>
void main(){
	int i,a[10],b[10],*p;
	
	printf("enter array\n");
	for(i=0;i<10;i++)
	{
		scanf("%d" ,&a[i]);
		
		p=&a[i];
		
		b[i]=*p;
	}
	for(i=0;i<10;i++)
	{
		printf("%d \n" ,b[i]);
	}
}
