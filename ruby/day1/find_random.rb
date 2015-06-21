#!/usr/bin/ruby

x = Random.rand(1...100)
y = -1
while y != x
	print "Guess the random number :"
	y = gets.to_i
	puts "to low!" if y < x
	puts "to high!" if y > x
	puts "well done!" if y == x
end
