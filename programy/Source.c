#include <stdio.h>

void Hello();

int main()
{
	int boolean;
	puts("Podaj boola ");
	scanf("%i", &boolean);

	if (boolean)
		Hello();

	return 0;
}

void Hello()
{
	puts("Hello, World!");
}