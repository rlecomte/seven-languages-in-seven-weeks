#!/usr/local/bin/io

Vehicle := Object clone
Vehicle whatisit := method("i am a vehicle" println)

Car := Vehicle clone
Car whatisit := method("i am a car" println)

Truck := Vehicle clone
Truck whatisit := method("i am a truck" println)

UnknownVehicle := Vehicle clone
 
vwRedCar := Car clone
vwRedCar matricule := method("1234ABC" println)
vwRedCar color := method("red" println)

vwRedCar whatisit
vwRedCar color

bigTruck := Truck clone
bigTruck matricule := method("567AZER" println)
bigTruck whatisit

unknownVehicle := UnknownVehicle clone
unknownVehicle whatisit


