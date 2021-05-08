#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

#define SIZE 40

struct DataItem{

	int key;
        int data;
};

struct DataItem* hashArray[SIZE];
struct DataItem* dummyItem;
struct DataItem* item;

int hashCode(int key){

	return key%SIZE;
}

struct DataItem *search(int key){

	int hashIndex = hashCode(key);
	while (hashArray[hashIndex] != NULL){
	
		if(hashArray[hashIndex]->key == key)
			return hashArray[hashIndex];

		++hashIndex;

		hashIndex %= SIZE;
	}
	return NULL;
}

void insert(int key,int data){

	struct DataItem *item = (struct DataItem*) malloc(sizeof(struct DataItem));
	item->data=data;
	item->key = key;

	//get the hash
        int hashIndex = hashCode(key);
	while (hashArray[hashIndex] != NULL && hashArray[hashIndex]->key!= -1){
	
		++hashIndex;
		hashIndex %= SIZE;
	}
	hashArray[hashIndex] = item;

}


struct DataItem* delete(struct DataItem* item){

	int key = item->key;

	//get the hash
	int hashIndex = hashCode(key);
	while (hashArray[hashIndex] != NULL){
	
		if (hashArray[hashIndex] -> key == key){
		
			struct DataItem* temp = hashArray[hashIndex];
			hashArray[hashIndex] = dummyItem;
			return temp;
		}
		++hashIndex;
		hashIndex %= SIZE;
	}
	return NULL;
}


int main(){

	dummyItem = (struct DataItem*) malloc(sizeof(struct DataItem));
	dummyItem->data = -1;
	dummyItem->key = -1;

	
	insert(1,10);
        insert(2, 20);


	item = search(1);

	if (item != NULL ){
	
		printf("User Found:  %d\n", item->data);
	}
	else {
	
		printf("Element not found\n");
	}

	
}
