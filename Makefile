NAME = libft.a

MY_SOURCES = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c \
			ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_memchr.c \
			ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c \
			ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_split.c \
			ft_strchr.c ft_strdup.c ft_striteri.c ft_strjoin.c ft_strlcat.c \
			ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c \
			ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c \
			ft_lstadd_back.c ft_lstclear.c ft_lstiter.c ft_lstmap.c ft_lstsize.c \
			ft_lstadd_front.c ft_lstdelone.c ft_lstlast.c \
			ft_lstnew.c flag.c flag_combo_plus.c flag_dash_length.c flag_plus.c	\
			flag_space.c ft_printf.c hex_to_itoa.c pr_conversion.c flag_combo.c	\
			flag_combo_space.c flag_hashtag.c flag_point.c flag_zero.c flag_point_length.c \
			itoa.c putcharstr.c flag_combo_ht.c flag_dash.c flag_nb.c \
			flag_zero_length.c fts.c struct.c \
			get_next_line_bonus.c  get_next_line.c get_next_line_utils.c \
			get_next_line_utils_bonus.c \


MY_OBJECTS = $(MY_SOURCES:.c=.o)

all : $(NAME)

$(NAME) : $(MY_OBJECTS)
	ar rcs libft.a $(MY_OBJECTS)

.c.o :
	cc -Wall -Werror -Wextra -I ./ -c $< -o ${<:.c=.o}

clean :
	rm -f $(MY_OBJECTS) $(MY_OBJECTS_BONUS)

fclean : clean
	rm -f $(NAME)

re	: fclean all