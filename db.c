#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>

typedef struct {

	char* buffer;
	size_t buffer_length;
	ssize_t user_input_length;
}InputBuffer;


InputBuffer* new_input_buffer(){

	InputBuffer* user_input  = (InputBuffer*)malloc(sizeof(user_input));
	user_input->buffer = NULL;
	user_input->buffer_length = 0;
	user_input->user_input_length = 0;

	return user_input;
}

ssize_t getline(char **lineptr, size_t *n, FILE *stream);

void read_input(InputBuffer* user_input){
	ssize_t bytes_read = getline(&(user_input->buffer), &(user_input->buffer_length ), stdin);
	if (bytes_read <= 0){
	
		printf("Error While Reading Input\n");
		exit(EXIT_FAILURE);
	}
	//Ignore trailing newline
	user_input->user_input_length = bytes_read -1;
	user_input->buffer[bytes_read -1] = 0;
}

void close_input_stream(InputBuffer* user_input){

	free(user_input->buffer);
	free(user_input);
}

void print_screen(){

	printf("psql> ");
}

int main(int argc, char* argv[]){
	system("clear");

	printf("           WELCOME TO THE HACKY VERSION OF POSTGRES SQL     \n");
        InputBuffer* user_input = new_input_buffer();
        while(true){
	
		print_screen();
		read_input(user_input);

		if(strcmp(user_input->buffer, "exit") == 0){
		
			close_input_stream(user_input);
			printf("Press Any Key To Exit");
			char ch =  getchar();
			if (ch){
			    system("clear");
			    exit(EXIT_SUCCESS);

			}
			else {
			
				exit(EXIT_FAILURE);
			}
		}
		else {
		
			printf("Unrecognized Command '%s'\n", user_input->buffer);
		}
	}
	

}
