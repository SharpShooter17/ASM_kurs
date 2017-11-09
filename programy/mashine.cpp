#include <stdio.h>

int main()
{
	const char * buffor = "\xB8\x78\x56\x34\x12\xC3";

	int (*func)(void) = (int(*)(void)) buffor;
	
	func();
	
	return 0;
}