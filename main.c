#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>


size_t ft_strlen(const char *s);
char *ft_strcpy(char *dest, const char *src);
int ft_strcmp(const char *s1, const char *s2);
ssize_t ft_write(int fd, const void *buf, size_t count);
ssize_t ft_read(int fd, void *buf, size_t count);
char *ft_strdup(const char *s);

int main()
{
	char entry[100];
	char entry2[100];
	char cpy[100];
	char *cpy2;
	int size;

	ft_write(1, "Please input something\n", 24);
	size = ft_read(0, entry, 99);
	entry[size] = '\0';
	ft_write(1, "\n", 1);
	ft_write(1, "Input : ", 8);
	ft_write(1, entry, ft_strlen(entry));
	ft_write(1, " (ft_write + ft_read)\n", 22);
	ft_write(1, "Size: ", 6);
	printf("%ld (ft_strlen)\n", strlen(entry));
	ft_write(1, "Please input something else\n", 29);
	size = ft_read(0, entry2, 99);
	entry2[size] = '\0';
	ft_write(1, "Compare (ft_strcmp vs strcmp): ", 31);
	printf("%d - %d\n", ft_strcmp(entry, entry2), strcmp(entry, entry2));
	ft_strcpy(cpy, entry);
	ft_write(1, "Copy (ft_strcpy): ", 18);
	ft_write(1, cpy, ft_strlen(cpy));
	ft_write(1, "\n", 1) ;
	cpy2 = ft_strdup(entry);
	ft_write(1, "Copy (ft_strdup): ", 18) ;
	ft_write(1, cpy2, ft_strlen(cpy));
	ft_write(1, "\n", 1);
	free(cpy2);
	return 0;
}
