CC	=	gcc
FLAGS	=	-Wall -Wextra -Werror

NAME	=	libft.a

INC	=	libft.h
SRC = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalpha.c ft_isascii.c \
	ft_isprint.c ft_isdigit.c ft_isalnum.c ft_memcmp.c ft_memcpy.c \
	ft_memmove.c ft_memchr.c ft_memset.c ft_strlen.c ft_toupper.c \
	ft_tolower.c ft_strchr.c ft_strrchr.c ft_strcmp.c ft_strncmp.c ft_strdup.c \
	ft_strlcat.c ft_strlcpy.c ft_substr.c ft_strjoin.c ft_strtrim.c \
	ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_strnstr.c \
	ft_putchar_fd.c ft_putstr_fd.c ft_putnbr_fd.c ft_putendl_fd.c

OBJ	=	$(SRC:.c=.o)

all:	$(NAME)

$(NAME):	$(OBJ) $(INC)
			ar rc $(NAME) $(OBJ)
			ranlib $(NAME)

run: $(OBJ)
	$(CC) $(FLAGS) $(OBJ) -o run

%.o: %.c
	$(CC) $(FLAGS) -c $< -o $@

clean:
		rm -f $(OBJ)

fclean:	clean
		rm -f $(NAME)

re:	fclean all
