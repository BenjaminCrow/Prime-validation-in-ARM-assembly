#include<stdio.h>
  
  
extern int prim_e(int a);
 
int main() {
   int n, result;
 
   printf("Adj meg egy pozitiv egesz szamot!\n");
   scanf("%d",&n);
 
   result = prim_e(n);
 
   if ( result == 1 )
      printf("A %d primszam.\n", n);
   else
      printf("A %d nem primszam.\n", n);
 
   return 0;
}
 