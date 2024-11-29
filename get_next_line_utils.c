/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line_utils.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vluo <vluo@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/27 17:50:15 by vluo              #+#    #+#             */
/*   Updated: 2024/11/28 17:08:34 by vluo             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line.h"

int	len(char *str)
{
	int	i;

	if (str == 0)
		return (0);
	i = 0;
	while (str[i])
		i ++;
	return (i);
}

char	*ft_substr(char *s, int start, int length)
{
	int		i;
	char	*res;

	res = malloc(sizeof(char) * (length + 1));
	res[length] = '\0';
	i = 0;
	while (i < length)
	{
		res[i] = s[start + i];
		i ++;
	}
	return (res);
}

char	*ft_strnjoin(char *s1, char *s2, int n)
{
	int		i;
	int		j;
	int		s1_length;
	char	*strj;

	if (s2[0] == '\0')
		return (0);
	s1_length = len(s1);
	strj = malloc((s1_length + n + 1) * sizeof(char));
	if (strj == 0)
		return (0);
	i = 0;
	j = 0;
	if (s1 != 0)
	{
		while (s1[i])
			strj[j ++] = s1[i ++];
	}
	i = 0;
	while (s2[i] && j - s1_length < n)
		strj[j ++] = s2[i ++];
	strj[j] = '\0';
	free(s1);
	return (strj);
}
