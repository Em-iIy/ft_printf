#include "ft_printf.h"
#include <unistd.h>

int	ft_putstr(char *s, char end)
{
	int	len;

	len = 0;
	if (!s)
		return (write(1, "(null)", 6));
	while (s[len] != end && s[len])
		len++;
	write(1, s, len);
	return (len);
}
