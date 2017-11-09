#include <stdio.h>

#pragma pack(push,1)

struct TGA_HEADER {
  unsigned char id_field;   // length of ID Field
  unsigned char c_map;      // is there a color map ? (should be 0x00)
  unsigned char img_type;   // always 2
  unsigned char color_map[5];  // ignored for 24 bits & 32 bits
  unsigned short x_origin;  // the X coord of the lower left corner (0x0000)
  unsigned short y_origin;  // the Y coord of the lower left corner (0x0000)
  unsigned short width;     // width of image
  unsigned short height;    // height of image
  unsigned char bpp;        // bits per pixel (8,16,24,32)
  unsigned char flip;       // 0x20 for yes
};

struct obraz
{
  int x;
  int y;
  char dane[1];
};
#pragma pack(pop)

struct obraz*
odczytaj_obraz_z_tga(char* dane)
{
  struct obraz *obraz_wyjsciowy = NULL;
  struct TGA_HEADER *tga = (struct TGA_HEADER*)dane;
  int wielkosc, i;

  if(tga->img_type != 2)
    return NULL;
  
  wielkosc = tga->width * tga->height * 3;

  obraz_wyjsciowy = malloc(wielkosc + 8);
  if(!obraz_wyjsciowy)
   return NULL;

  obraz_wyjsciowy->x = tga->width;
  obraz_wyjsciowy->y = tga->height;
 
  for(i = 0; i < wielkosc; i++)
    obraz_wyjsciowy->dane[i] = dane[i + tga->id_field];

  return obraz_wyjsciowy;
}


