import random
stop = 0
#I know I /technically/ don't need this but oh well
ops = ['math', 'lump', 'help', 'quest', 'terminal', 'count', 'bottles']
def prompt():
	global op
	op = raw_input(p)
def ops():
	global math
	global lump
	global help
	global quest
	global terminal
	global count
	global bottles
p = "> "
op = raw_input(p)
while 0 == 0:
	while stop != 1:
		if op == 'quit':
			quit()
		elif op == 'terminal':
			import mdpterm
		elif op == 'count':
			import mdcounttozero
		elif op == 'math':
			import mathz
		elif op == 'bottles':
			import mdSomebottles
		elif op == 'help':
			print "Current processes are: \n -Math (math) \n -Help (help) \n -Terminal (terminal) \n -Count (count) \n -Bottles (bottles)"
		elif op == 'quest':
			print "Coming soon!"
		else:
			print "Unknown command! Type \"help\" for a list of operations."
		stop = stop + 1
		op = ''
		op = raw_input(p)
		stop = 0
