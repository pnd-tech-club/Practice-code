#Asks the user for an input(in this case- their name)
print 'What is your name?'
#This prompts and sets the variable "name" as whatever the user inputs
name = raw_input( )
#Prints the input into printed string(or something like that :P )
print 'Nice to meet you, %s !' % name
#Another way to ask for input
print 'What is your last name?'
last_name = raw_input('> ')
#printing the users full name
print 'Hello %s %s !' % (name, last_name)
