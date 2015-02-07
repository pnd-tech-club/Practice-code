#This is just a little terminal-esquie thing I decided to throw together- not really all that functional yet

#Needed in order to prevent looping
stop = 0
#Current avilable commands(or at least ones that are possible in python)
commands = ['echo', 'help', 'quit']
#Currently not functioning- will define what to reset to when calling reset
def reset():
	command = ""
	stop = "0"
print "Welcome to my testing bay!"
print "Get a list of commands by typing \"help\"."
#Defines variables for use all over the code
global command, stop
command = raw_input('>')
#Needed in order to keep the process running
while 0 == 0:
	while stop<1:

		if command == ["quit"]:
			quit()
		elif 'help':
			print """
This program doesn't have much use at the moment, but will hopefully have some more work and contributors in the near future.
Current commands:
	\* help- displays this information
	\* quit- exits the program
	\* echo- completely useless other than for shits and giggles
"""
		stop = 1
		
	



