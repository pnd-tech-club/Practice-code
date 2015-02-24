#A very simple program to count from the input number to zero
#Written in python 2 by Matthew Knecht for example purposes

#Defines stop as 0 for later use
stop = 0

#Defines the variable "num" so it can be used throughout the code (Without this, the while loop wouldn't work)
def count():
	global num
	global first
#Asks the user for an input number and converts it to an "int"eger string to allow math operations relative to it
num = int(raw_input('# '))
#A little extra variable to get the input number to print too
first = num
#Prints whatever the first input value was
print first
#This first loop is needed to keep everything from stopping early
while stop != num:
#This loop will cause the loop to stop when the user-given number reaches 0- I changed this a little bit because it kept going down if the given number was less than 0
	while num > 0:
#Lowers the number variable each time the software goes through a loop [Learning moment: A software loop is how long it takes the computer to process through code and change values, information, etc.  These loops are so fast that they are measured in fractions of fractions of seconds]
		num = num - 1
#Simply prints the "num" variable to the terminal
		print num
#Determines if the "num" variable has reached 0 yet
	if num == 0:
#Quits the program if the above action has completed
		quit()
#Determines if the "num" variable is less than 0
	elif num < 0:
#Prints a little treat for people who think they've outsmarted the code ;)
		print "lol nope"
#Quits if above action has completed
		quit()
