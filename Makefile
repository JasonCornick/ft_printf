# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jcornick <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/08/16 15:14:33 by jcornick          #+#    #+#              #
#    Updated: 2018/08/16 15:22:02 by jcornick         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
SRC = ./ft_handle_arguments.c ./ft_handle_conversion.c ./ft_printf.c ./pr_putchar.c ./pr_itoa_base.c ./pr_putstr.c ./pr_putnbr.c ./pr_tolower.c
HEADER = ./ft_printf.h

all: $(NAME)
$(NAME):
	gcc -Wall -Werror -Wextra -c $(SRC) -I $(HEADER)
	ar rc $(NAME) *.o
clean:
	rm -f *.o
fclean: clean
	rm -f $(NAME)
re: fclean all
