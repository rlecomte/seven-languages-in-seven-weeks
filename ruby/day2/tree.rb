#!/usr/bin/ruby

class Tree
	attr_accessor :children, :node_name

	def initialize(name, children=[])
		@children = children
		@node_name = name
	end

	def initialize(name, children = {})
		@node_name = name
		@children = children.each_pair {|k,v| Tree.new(k,children[k])}
		puts name
		puts children.to_s
	end

	def visit_all(&block)
		visit &block
		children.each {|c| c.visit_all &block}
	end

	def visit(&block)
		block.call self
	end
end

ruby_tree = Tree.new("ruby", {'grandpa' => { 'dad' => { 'child1' => {}, 'child2' => {}}}}) 
