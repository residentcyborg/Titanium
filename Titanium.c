#include <stdio.h>

int main(int argc, char *argv[]){
	int i=0x1000000;

	while(i){
		i--;

		putc(((i>>8)&i), stdout);
		putc(((i>>8)&i)>>8, stdout);

		putc(((i>>8)|i), stdout);
		putc(((i>>8)|i)>>8, stdout);
	}

	return 0;
}
