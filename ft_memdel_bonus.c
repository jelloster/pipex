/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memdel_bonus.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: motuomin <motuomin@student.hive.fi>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/17 14:23:54 by motuomin          #+#    #+#             */
/*   Updated: 2024/06/18 13:33:06 by motuomin         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include  "pipex_bonus.h"

void	*ft_memdel(char **ptr)
{
	if (*ptr)
		free (*ptr);
	*ptr = NULL;
	return (NULL);
}
