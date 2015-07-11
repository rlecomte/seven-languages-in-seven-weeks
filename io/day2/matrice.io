#!/usr/local/bin/io

matrice := method(limit, col,
	m := list()
	for(i, 0, col,
		m append(list())
	);
	c := 0
	for(i, 0, limit,
		m at(c) append(i)
		if(c < (col-1), c = (c + 1), c = 0)	
	);
	return m
)

matrice(6,3) at(1) at(0) println
