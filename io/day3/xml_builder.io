#!/usr/local/bin/io

Builder := Object clone
Builder nb_indent := 0

new_builder := method(nb,
	b := Builder clone
	b nb_indent := nb
	return b
)

Builder forward := method(
	writeln("\t" repeated (self nb_indent), "<", call message name, ">")
	call message arguments foreach(
		arg,
		content := new_builder(self nb_indent + 1) doMessage(arg);
		if(content type == "Sequence", writeln("\t" repeated ((self nb_indent) + 1), content))
	)
	writeln("\t" repeated (self nb_indent), "</", call message name, ">")
)

Builder ul(
	li(a(test("a")), a("b"), b("c")),
	li("Lua"),
	li("Javascript")
)


