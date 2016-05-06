#include <stdio.h>
 
void main ()
{
    int number[30];
	int big
    int i, j, a, n;
 
    printf("Enter the value of N\n");
    scanf("%d", &n);
    printf("Enter the numbers \n");
    for (i = 0; i < n; ++i)
    scanf("%d", &number[i]);
    
    for (i = 0; i < n; ++i)
    {
        for (j = i + 1; j < n; ++j)
        {
            if (number[i] < number[j])
            {
                a = number[i];
                number[i] = number[j];
                number[j] = a;
            }
        }
    }
	
	j=0;
    
	printf("The numbers arranged in descending order are given below\n");
    for (i = n-1; i >=0; i--)
    {
	      big+=number[i]*10^(j);  
    
		j++;
	}

	printf("The largest possible number is %d",big);
	
}

