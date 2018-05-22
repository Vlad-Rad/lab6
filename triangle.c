#include <stdio.h>
#include <stdlib.h>

void triangle(int height){

	float max_i = 2 * (height - 1) + 1;
	
	for(int i = 1; i <= max_i; i+=2){
		for(int j = 0; j < i; j++){
			printf("*");
		}	
		printf("\n");
	}

}
