//Add Two Distance(in inch-feet system) using Structures.

#include<stdio.h>
struct distance{
	int inch;
	int feet;
}d1,d2,d3;

void main()
{
	printf("Enter First Distance\n");
	printf("enter inch\n");
	scanf("%d" ,&d1.inch);
	printf("enter feet\n");
	scanf("%d" ,&d1.feet);
	
	printf("Distance one %d feet %d inch\n" ,d1.feet,d1.inch);
	
	printf("\nEnter First Distance\n");
	printf("enter inch\n");
	scanf("%d" ,&d2.inch);
	printf("enter feet\n");
	scanf("%d" ,&d2.feet);
	
	printf("Distance two %d feet %d inch\n" ,d2.feet,d2.inch);
	
	//sum
	d3.inch=d1.inch+d2.inch;
	d3.feet=d1.feet+d2.feet;
	
	while(d3.inch>=12)
	{
		d3.feet++;
		d3.inch=d3.inch-12;
	}
	
	printf("\nSum %d feet %d inch" ,d3.feet,d3.inch);
}
