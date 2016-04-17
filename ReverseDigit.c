#include<stdio.h>

Void main(){
    int n,r,rev=0;

    printf("Enter a number: ");
    scanf("%d",&n);

    while(n){
         r=n%10;
         rev=rev*10+r;
         n=n/10;
    }

    printf("Reversed of the number: %d",rev);
    
}