/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mpal <marvin@42.fr>                        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/02 17:06:57 by mpal              #+#    #+#             */
/*   Updated: 2023/11/02 17:14:01 by mpal             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_putnbr_fd(int n, int fd)
{
	if (n < 0)
	{
		ft_putchar_fd('-', fd);
	}
	if (n > 0)
	{
		n = -n;
	}
	if (n <= -10)
	{
		ft_putnbr_fd(-(n / 10), fd);
	}
	ft_putchar_fd('0' - n % 10, fd);
}
