#!/usr/local/bin/io

compute := method(nb, if(nb > 2, return compute(nb - 1) + compute(nb - 2), 1))

l := compute(4)
l println
