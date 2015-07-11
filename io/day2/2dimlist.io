#!/usr/local/bin/io

Matrice := Object clone
Matrice theList := list()
Matrice dim := method(x,y,
	r := list()
	for(i, 0, x,
		c := list()
		for(k, 0, y,
			c append(0)
		) 
		r append(c)
	)
	self theList := r
)
Matrice set := method(x,y,value,
	self theList at(x) atPut(y, value)
)
Matrice get := method(x,y,
	self theList at(x) at(y)
)
Matrice toFile := method(file,
	f := File with(file)
	f openForUpdating
	self theList foreach(x,v,
		v foreach(y,n,
			ns := n asString
			f write(ns + " ")
		)
		f write('\n')
	)
	f close
)
Matrice fromFile := method(file,
	r := list()
	f := File with(file)
	f openForReading
	col := f readLine split map(v, v toNumber)
	r append(col)
	f close	
	self theList := r
)

myMatrice := Matrice clone
myMatrice dim(2,2)
myMatrice set(1, 1, 1)
myMatrice get(1, 1) println
myMatrice get(0, 0) println
myMatrice toFile("foo.txt")

