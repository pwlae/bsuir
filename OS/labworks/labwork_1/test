#include <stdio.h>
#include <sys/stat.h>

int main (int argc, char *argv[])
{
	FILE *fp;
	FILE *pFile;

	char buff[255];

  struct stat st;

	fp = fopen(argv[1], "r");
	stat(argv[1], &st);

	pFile = fopen(argv[2], "wb");
  chmod(argv[2], st.st_mode);

	if (fp == NULL) perror ("Error opening file");

  while (fgets(buff, 255, (FILE*)fp)) {
    fputs (buff, pFile);
	}

	fclose (fp);
  fclose (pFile);
	return 0;
}
