#This is just a little terminal-esquie thing I decided to throw together- not really all that functional yet
#Developed by Matthew Knecht
#Contributors:
#Sean Hinchee
#Wow this totally looks so professional xD

#Needed in order to prevent looping
global stop
stop = 0
#Current avilable commands(or at least ones that are possible in python)
commands = ['echo', 'help', 'quit']
#Currently not functioning- will define what to reset to when calling reset
def reset():
	command = ""
	stop = "0"
def commands():
	global quit
	global help
	global echo
p = '>'
global unknown
unknown = "Unknown command: type \"help\" for help."
print "Welcome to my testing bay!"
print "Get a list of commands by typing \"help\"."
#Defines variables for use all over the code
global command

command = raw_input(p)
if command == 'quit':
	quit()
#Needed in order to keep the process running
while 0 == 0:
	while stop != 1:

		if command == ['quit']:
			quit()
		elif command == 'help':
			print """
This program doesn't have much use at the moment, but will hopefully have some more work and contributors in the near future.
Current commands:
	* help- displays this information
	* quit- exits the program
	* echo- completely useless other than for kicks and giggles
	* clear- clears the screen
"""
	
		stop = stop + 1
	command = raw_input(p)
	stop = 0
	reset()
	if command == 'quit':
		quit()	
	elif 'echo ' in command:
		print command
	elif command == 'clear':
		print """

""" * 25
	elif command != commands:
		print unknown
