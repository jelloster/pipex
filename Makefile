# ------------ NAME --------------
NAME	:=	pipex

# ---------- COMPILER ------------
CC	:=	cc

# ----------- FLAGS --------------
FLAGS	:=	-Wall -Wextra -Werror

LIBFT	:=	libft/libft.a

# -------- SOURCE FILES ----------
SRC	:=	awk_split.c \
		error_utils.c \
		pipex.c \
		pipe_utils.c \
		main.c \
		str_utils.c \
		cmd_utils.c \
		ft_memdel.c \

OBJ	:= 	$(SRC:.c=.o)

# -------------RULES--------------
 

$(NAME): $(OBJ) $(LIBFT)
	$(CC) $(FLAGS) $(LIBFT) -o $@ $^

%.o : %.c
	$(CC) $(FLAGS) -c $< -o $@

$(LIBFT):
	@make -C libft

# ----------- PHONIES ------------

.PHONY: all
all: $(NAME)

.PHONY: clean
clean:
	rm -f $(MANDATORY_OBJ) $(BONUS_OBJ) .bonus

.PHONY: fclean
fclean: clean
	rm -f $(NAME) .bonus

.PHONY: re
re: fclean all

.PHONY: bonus
bonus: .bonus
