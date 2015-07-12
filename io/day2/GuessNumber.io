#!/usr/local/bin/io

i := (Random value * 100) floor

guess := method(
	"give a number : " println
	x := (File standardInput readLine) asNumber
	if(x > i, 
		"too high" println
		guess()
		return
	)
	if(x < i,
                "too low" println
                guess()
		return
	)
	"ok good" println	
)

guess()

