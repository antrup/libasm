# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: atruphem <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/20 18:28:25 by atruphem          #+#    #+#              #
#    Updated: 2021/05/21 14:35:55 by toni             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a 

OBJ = 	ft_read.o  ft_strcmp.o  ft_strcpy.o  ft_strdup.o  ft_strlen.o  ft_write.o

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $@ $^
	ranlib $@
	gcc -Wall -Wextra -Werror -no-pie *.c -L. -lasm -o main

%.o: %.s
	nasm -f elf64 $< -o $@

clean:
	rm -f $(OBJ) $(OBJB)

fclean: clean
	rm -f $(NAME) main

re: fclean all
