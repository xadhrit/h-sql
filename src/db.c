/*               
 *     >>  Basically open a file 
 *     >>  Store some data in it
 *     >>  Close the file
 *     >> On Search open the file and search for data
 *
 *
 * */

#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <unistd.h>
#include <stdlib.h>
FILE *fp;


/*For Example we are taking data from command line for user and storing it in file*/

// data structure
struct date {

	int day;
	int month;
	int year;

};

// information of user

struct user{
	char firstName[20];
	char lastName[20];
	int phone;
	char gender[10];
	char address[50];

} info;


// global variables
void open_file();
void write_res();
void search();
int tl ,ts, x;


int main(){

	open_file();
	return 0;

}

void open_file(){

	FILE *fp = fopen("store.txt", "r");
	fseek(fp, 0, SEEK_END);
	/*
	 *After open the file we have to store data
	 For that we have to define data's structure and format , primary keys, in which it will be store etc, etc.
	 * */
	tl = ftell(fp);
	ts = sizeof(info);
	x = tl/ts;
	fseek(fp, (x-1)*ts, SEEK_SET);
	fread(&info, sizeof(info), 1, fp);
	fclose(fp);

	printf("Fill Your Information\n");

	printf("First Name : ");
	scanf("%s", info.firstName);
	printf("Last Name : ");
	scanf("%s", info.lastName);
	printf("Phone : ");
	scanf("%d", &info.phone);
	printf("Gender: ");
	scanf("%s", info.gender);
	printf("Address: ");
	scanf("%s", info.address);
	return;

}

//function for writing data in text file

void write_res(){

	FILE *fp;
	fp = fopen("store.txt", "w");
	fwrite(&info, sizeof(info),1,fp);
	fclose(fp);
	return;
}



// write a search function not similiar to binary search tree search yet do it

void search(){

	char ch;
	char nam[100];
	int n,i, m=1;
	FILE *fp;
	fp=fopen("store.txt", "r");
	do {
	
		printf("\nEnter search choice : ");
		ch = getchar();

	}while(ch!='1' && ch!='2');
	switch(ch){
	
		case '1':
			fseek(fp, 0, SEEK_END);
			tl = ftell(fp);
			ts = sizeof(info);
			x = tl/ts;
			do {
			
			printf("\nChoose   Name")	;
			scanf("%d", &n);

			if (n<=0 || n>x){
			
				printf("\nEnter Choice\n");
			}
			else {
			
				fseek(fp, (n-1)*x, SEEK_SET);
				fread(&info, x, 1, fp);
				output();
			}
			
			}while(ch=='y')
			fclose(fp);
			break;

	// stop this crapping now.


	}


	
}






