#!/usr/local/bin/io

check := method(if((call sender doMessage(call message argAt(0)))==0 , return 0, return (call sender doMessage(call message argAt(1)))))

rec_fib := method(nb, if(nb > 2, return rec_fib(nb - 1) + rec_fib(nb - 2), 1))

rec_fib(4) println


for_fib := method(nb, 
	if(nb < 3, return 1,
		n1 := 1
		n2 := 1
		value := 0
		for(i, 3, nb - 1,
			value = n1 + n2
			n1 := n2
			n2 := value
		)
		return n1 + n2
	)
)

for_fib(4) println

check_rec_fib := method(nb, check(nb, rec_fib(nb)))
check_for_fib := method(nb, check(nb, for_fib(nb)))

check_rec_fib(0) println
check_rec_fib(4) println
check_for_fib(0) println
check_for_fib(4) println
