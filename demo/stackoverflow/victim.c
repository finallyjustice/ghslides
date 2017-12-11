/*
 * # gcc -fno-stack-protector -o victim victim.c
 * # execstack -s victim
 * # setarch `arch` -R ./victim
 */

#include <stdio.h>

int main()
{
	char name[64];
	printf("%p\n", name);  // Print address of buffer.
	puts("What's your name?");
	gets(name);
	printf("Hello, %s!\n", name);
	return 0;
}
