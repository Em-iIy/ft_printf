SRCS = 	ft_printf.c ft_putchar.c ft_puthexnum.c ft_putnbr.c ft_putptr.c ft_putstr.c
OBJS = $(SRCS:.c=.o)
CFLAGS = -Wall -Wextra -Werror
CC = gcc
NAME = libftprintf.a

all : $(NAME)

$(NAME) : $(OBJS)
	ar rsu $(NAME) $(OBJS)

clean :
	rm -rf $(OBJS)

fclean : clean
	rm -rf $(NAME)

re : fclean all

.PHONY : all clean fclean re