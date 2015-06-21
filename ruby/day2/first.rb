#!/usr/bin/ruby

puts "--- each ---"

a = (1...60).to_a

b = []

a.each do |x|
	b << x
	if b.length > 3
 		puts b.to_s
 		b = []
	end
end

puts "---each_slice---"

(1...60).each_slice(4) {|x| puts x.to_s}
