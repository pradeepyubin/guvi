#include <stdio.h>
 
int power_of_2( int x);
 
int main()
{
	unsigned int num;
 
	printf("\n Enter Number");
	scanf("%d", &num);
    power_of_2(num);
}

 
int power_of_2(int x)
{
    int i,reminder, r=0,rr=0;
 
    for (i = 0;i < num/2;i++)
    {
       reminder=n%2;
	   num=n/2;
	   if(reminder==0)
	   r++;
	   else
	   rr++; // When r is not zero then the number has got other diviser than 2;

	   }
    
	if((r%2==0)&&(rr==0))
	printf("\n The number is a power of 2");
	else
	printf("\n The number is not a power of two");
	
	
	
	
	
}