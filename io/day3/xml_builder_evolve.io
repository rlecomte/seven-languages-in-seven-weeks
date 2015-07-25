#!/usr/local/bin/io

Builder := Object clone
Builder nb_indent := 0

new_builder := method(nb,
	b := Builder clone
	b nb_indent := nb
	return b
)

Builder forward := method(
	m := call evalArgAt(0)
	
	if(m type == "Map",
		attrs := m map(k,v,k asString .."=".. v asString) join(" "),
		attrs := ""
	)

	writeln("\t" repeated (self nb_indent), "<", call message name, " ", attrs, ">")
	
	call message arguments foreach(
		arg,
		content := new_builder(self nb_indent + 1) doMessage(arg);
		if(content type == "Sequence", writeln("\t" repeated ((self nb_indent) + 1), content))
	)
	writeln("\t" repeated (self nb_indent), "</", call message name, ">")
)

curlyBrackets := method(
	r := Map clone
	call message arguments foreach(arg,
		r doMessage(arg)
	)
	r
)

OperatorTable addAssignOperator(":", "atPutNumber")

Map atPutNumber := method(
	self atPut(
		call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
		call evalArgAt(1)
	)
)

Builder ul(
	doString("{\"autor\":\"Tate\"}"),
        li(a(test("a")), a("b"), b("c")),
        li("Lua"),
        li("Javascript")
)

