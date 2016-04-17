#include<stdio.h>
#include<conio.h>
void main()
{
   int a, b, c;
   char str[100];
   char rev[100];
   printf("Enter a string\t");
   scanf("%s", str);
   printf("The original string %s :", str);
   for(a = 0; str[a] != '\0'; a++);
   {
      c = a-1;
   }
   for(b = 0; b <= a-1; b++)
   {
      rev[b] = str[c];
      c--;
   }
   printf("The reverse string  %s :", rev);
   getch();
}