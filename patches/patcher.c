#include <stdio.h>

#include<stdio.h>

void copy(FILE *out, char *what)
{
  FILE *f;
  char buf[1024]; int i;
  f = fopen(what, "rb");
  while( ( i = fread(buf, 1, 1024, f) ) != 0 )
    fwrite(buf, 1, i, out);
  fclose(f);
}

void patch_from_file(FILE *out, int offset, char *what)
{
  FILE *f;
  char buf[1024]; int i;
  fseek(out, offset, SEEK_SET);
  f = fopen(what, "rb");
  while( ( i = fread(buf, 1, 1024, f) ) != 0 )
    fwrite(buf, 1, i, out);
  fclose(f);
}

void patch(FILE *out, int offset, int count, char *what)
{
  fseek(out, offset, SEEK_SET);
  fwrite(what, 1, count, out);
}


int
main(void)
{
  FILE *out;
  int i;

  out = fopen("out.exe", "wb");
  copy(out, "org.exe");
  patch_from_file(out, 0x18e4, "tga_hax");
  patch_from_file(out, 0x0c45, "patch1");
  patch_from_file(out, 0x19a5, "patch2");
  
  fclose(out);

  return 0;
}

