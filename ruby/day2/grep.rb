#!/usr/bin/ruby

class Grep
	attr_accessor :file, :phrase

	def initialize(file, phrase=[])
		@file = file
		@phrase = phrase
	end


	def grep()
		IO.readlines(file).each{|line| puts line if line.match('.*' + phrase + '.*')}
	end
end

Grep.new("foo.bar", "test").grep
