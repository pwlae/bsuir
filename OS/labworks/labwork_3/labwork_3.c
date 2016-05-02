#include <stdio.h>
#include <stdlib.h>
#include <dirent.h>
#include <sys/stat.h>

int get_checksum (char* file_path)
{
  FILE *fp;
  char buff[255];

  // Define checksum variable
  unsigned char checksum = 0;

  fp = fopen(file_path, "r");

  while (!feof(fp) && !ferror(fp)) {
    checksum ^= fgetc(fp);
  }
  return checksum;
}

int list_files (char* path)
{
  DIR           *d;
  struct dirent *dir;
  d = opendir(path);
  if (d)
  {
    while ((dir = readdir(d)) != NULL)
    {
      printf("%s\n", dir->d_name);
    }

    closedir(d);
  }
  return 0;
}

int main (int argc, char *argv[])
{
  //get_checksum(argv[1]);

  printf ("%u\n", get_checksum(argv[1]));
  list_files(argv[2]);
  return(0);
}
