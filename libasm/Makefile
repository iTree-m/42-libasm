# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ichejra <ichejra@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/13 10:58:38 by ichejra           #+#    #+#              #
#    Updated: 2020/11/14 09:53:07 by ichejra          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRCS = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

OBJ = $(SRCS:.s=.o)

LINKERFLAG = -fmacho64

all: $(NAME)

$(NAME):$(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib	$(NAME)

%.o : %.s
	@nasm $(LINKERFLAG) $<

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all