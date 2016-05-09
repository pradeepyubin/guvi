#include <stdio.h>
 
void main ()
{
    int number[30],rotate[30];
	
    int i, j, a, n,r;
 	clrscr();
	
    printf("Enter the value of N\n");
    scanf("%d", &n);
	
    printf("Enter the numbers \n");
	
    for (i = 0; i < n; i++)
    {scanf("%d", &number[i]);}
    
	 printf("Enter the value of rotation length \n");
	 scanf("%d", &r);
		j=0;
		for(i=(n-r)-1;i < n;++i)
		{
		rotate[j]=number[i];
		j++;
		}
		
		j=0;
		for(i=(r-1);i <=0;i--)
		{
		rotate[i]=number[j];
		j++;
		}
 
	for (i = 0; i < n; i++) {
      printf("\n  %d",rotate[i]);
   }
 
	getch();	
}

