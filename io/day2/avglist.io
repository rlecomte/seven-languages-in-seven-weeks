#!/usr/local/bin/io

MyList := List clone
MyList myAverage := method(self average)


myList := MyList clone
myList append(1) append(2) append(3) append(4)
myList myAverage println

emptyList := MyList clone
#emptyList append(1)
emptyList myAverage println


