#This is just a mini terminal thing I decided to throw together- not really all that functional yet
#Written in Python 2.something.or.other
#Developed by Matthew Knecht
#Contributors:
#Sean Hinchee
#Wow this totally looks so professional xD

#Needed in order to prevent looping
global stop
stop = 0
#Current avilable commands(or at least ones that are possible in python)
commands = ['echo', 'help', 'quit']
#Broken clear command supplied by Chris
def cls():
	os.system(['clear','cls'][os.name == 'nt'])
#Specifies what to reset variables to after calling reset
def reset():
	command = ""
	stop = "0"
	repeat = ""
def commands():
	global quit
	global help
	global echo
	global clear
#Can't seem to understand this or get it to work :P Will eventually be implemented
#def echo_split(command):
#	global echor
#	echor = command.split(' ')
#	return repeat
p = '>'
global repeat
global unknown
unknown = "Unknown command: type \"help\" for help."
print "Welcome to my testing bay!"
print "Get a list of commands by typing \"help\"."
#Defines variables for use all over the code
global command
command = raw_input(p)
repeat = command
if command == 'quit':
	quit()
#Needed in order to keep the process running
while 0 == 0:
	while stop != 1:
		if command == 'help':
			print """
This program doesn't have much use at the moment, but will hopefully have some more work and contributors in the near future.
Current commands:
	* help- displays this information
	* quit- exits the program
	* echo- completely useless other than for kicks and giggles
	* clear- clears the screen
"""
		elif command == 'quit':
			quit()	
		elif 'echo ' in command:
			print repeat
		elif command == 'clear':
			print repeat
#Giving me issues and almost always printing the error even when a known command is given
#Issue has now been fixed, I was being an idiot
		else:
			print unknown
		stop = stop + 1
		command = raw_input(p)
		stop = 0
		repeat = ""
		repeat = command
		reset()
