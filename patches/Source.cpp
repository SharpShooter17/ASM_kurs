#include <iostream>

void Hello();

int main()
{
	bool boolean;
	std::cout << "Podaj boola ";
	std::cin >> boolean;

	if (boolean)
		Hello();

	return 0;
}

void Hello()
{
	puts("Hello, World!");
}