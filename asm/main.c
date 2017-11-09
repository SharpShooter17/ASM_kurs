#include <stdio.h>
extern int suma(int a, int b);

int a = 1, b = 2;

int main()
{
	printf("%d", suma(a, b));
	return 0;
}