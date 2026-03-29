//1. Print value and address of a variable. (A) 

#include<stdio.h>
void main(){
	int n,*p;
	
	printf("enter value\n");
	scanf("%d" ,&n);
	
	p=&n;
	
	printf("vallue: %d\n" ,*p);
	printf("address: %d" ,p);
}
