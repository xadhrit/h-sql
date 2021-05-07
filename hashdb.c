#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "colors.h"


void print_scr(){

	printf("%sHsSQL > \n",  KRED);
}


int main(){

	system("clear");
	printf("  %s   WELCOME TO HH-SQL DATABASE  \n ", KCYN);
	
	print_scr();
	return 0;
}
