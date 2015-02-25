#Sets the text to use when asking for user input
p = '> '
#Defines a variable for stopping the while loop
stop = 0
#Sets the variable "test" to the user's input
test = raw_input(p)
#Loops while 0 is equal to 0 (i.e. forever or until interrupted)
while 0 == 0:
#Loops while the "stop" is not 1
	while stop != 1:
#Prints the variable "test" to the terminal
		print test
#Adds 1 to the "stop" variable which casues it to equal 1 (see: second while loop for reasoning)
		stop = stop + 1
#Prompts the user again so the process doesn't stop
		test = raw_input(p)
#Sets the "stop" variable to 0 which allows the program to continue running
		stop = 0
