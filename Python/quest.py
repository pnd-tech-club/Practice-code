#A fun, dumb adventure remake in Python 2.7
#Written by Matthew Knecht
import random
stop = 0
start = 0
p = '> '
global x
global y
x = 0
y = 0
def choice():
	global help
	global look
	global wait
	global inventory
	global use
	global take
	global move
	global back
	global n
	global s
	global e
	global w
	do = raw_input(p)
	if do == 'help':
		print "-help \n -look \n -wait \n -inventory \n -use \n -take \n -move(n,s,e,w) \n -back"
	elif do == 'quit':
		quit()
	elif do == 'look':
		from roominfo import room_info
	elif do == 'wait':
		wait()
	elif do == 'n':
		x =+ 1
		from roominfo import room_info
	else:
		print "You can't do that!"
	do == ''
	choice()
def items():
	global worn_sword
	global lantern
	global rock
chance = ['0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1']
while start == 0:
	print "Welcome to Quest!"
	choice()
	start = 1
choice()
