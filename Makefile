FLAGS			:=	-Wall -Wextra -Werror
CC				:=	cc
NAME			:=	pipex
LIBFT			:=	libft/libft.a

# MANDATORY
MANDATORY_SRC	:=	awk_split.c error_utils.c pipex.c pipe_utils.c main.c	\
					str_utils.c cmd_utils.c ft_memdel.c
					
MANDATORY_OBJ	:= 	$(MANDATORY_SRC:.c=.o)

# BONUS FILES
BONUS_SRC		:=	awk_split_bonus.c error_utils_bonus.c pipex_bonus.c		\
					str_utils_bonus.c cmd_utils_bonus.c main_bonus.c    	\
					pipe_utils_bonus.c ft_memdel_bonus.c
BONUS_OBJ		:=	$(BONUS_SRC:.c=.o)

# -------------RULES--------------
 
# MANDATORY COMPILATION

$(NAME): $(MANDATORY_OBJ) $(LIBFT)
	$(CC) $(FLAGS) $(LIBFT) -o $@ $^

%.o : %.c
	$(CC) $(FLAGS) -c $< -o $@

# BONUS COMPILATION

.bonus : $(BONUS_OBJ) $(LIBFT)
	$(CC) $(FLAGS) -o $(NAME) $^ $(LIBFT)
	touch .bonus

# LIBFT

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
