#include "ft_printf.h"
#include <unistd.h>

int	ft_putptr(void *ptr)
{
	write(1, "0x", 2);
	return (ft_puthexnum((unsigned long)ptr, 0, 0) + 2);
}
