CC = cc
CFLAGS = -Wall -Wextra -Werror

SRCS = ft_printf.c helper_functions.c helper_functions2.c helper_functions3.c parse_flags.c conversions_handler.c
SRCS_BONUS = ft_printf.c helper_functions.c helper_functions2.c helper_functions3.c parse_flags.c conversions_handler.c

OBJS = $(SRCS:.c=.o)
OBJS_BONUS = $(SRCS_BONUS:.c=.o)

NAME = libftprintf.a

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

bonus: $(OBJS_BONUS)
	ar rcs $(NAME) $(OBJS_BONUS)

%.o: %.c ft_printf.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJS) $(OBJS_BONUS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: clean fclean all bonus re