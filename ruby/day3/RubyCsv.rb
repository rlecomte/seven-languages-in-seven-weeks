#!/usr/bin/ruby

module ActsAsCsv

	class CsvRow
        	attr_accessor :row

        	def initialize(row=[])
                	@row = row
        	end

        	def method_missing name, *args
                	num = name.to_s
                	return row[0] if num.eql? "one"
                	return row[1] if num.eql? "two"
                	return row[2] if num.eql? "three"
                	return row[3] if num.eql? "four"
                	return row[4] if num.eql? "five"
		end
	end


	def self.included(base)
		base.extend ClassMethods
	end

	module ClassMethods
		def acts_as_csv
			include InstanceMethods
		end
	end

	module InstanceMethods

		def read
			@csv_contents = []
			filename = self.class.to_s.downcase + '.txt'
			file = File.new(filename)
			@headers = file.gets.chomp.split(', ')
			
			file.each do |row|
				@csv_contents << row.chomp.split(', ')
			end
		end

		def each
			filename = self.class.to_s.downcase + '.txt'
			file = File.new(filename)
			@headers = file.gets.chomp.split(', ')
			
			file.each do |row| 
				yield CsvRow.new(row.chomp.split(', '))	
			end
		end
	end

	attr_accessor :headers, :csv_contents

	def initialize
		read
	end
end

class RubyCsv
	include ActsAsCsv
	acts_as_csv
end

csv = RubyCsv.new
csv.each {|row| puts row.one}
csv.each {|row| puts row.two}
