//Kompilacja: php main.c | gcc -x c -std=c99 -
#include <stdio.h>

int main()
{
  double tab[1000] = {
  <?php
    for ($i = 0; $i < 1000; $i++) {
      echo sin($i * 0.001);
      if ($i != 1000) echo ", ";
    }
  ?>
  };

  for (int i = 0; i < 1000; ++i)
  {
    printf("sin(%lf) = %lf\n", (double)(i*0.001), tab[i] );
  }

  return 0;
}
