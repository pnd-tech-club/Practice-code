#Mainly messing around with numbers and math
#Written in Python 2.something.or.other
#Written by Matthew Knecht
stop = 0
stop = stop + 1

num = int(raw_input('# '))

def count():
	global num

while stop != num:
	while num > 0:
		minus = num - 1
		print "%r bottles of beer on the wall, %r bottles of beer.  Take one down, pass it around, %r bottles of beer on the wall." % (num, num, minus)
		num = num - 1
	if num == 0:
		quit()
	elif num < 0:
		print "lol nope"
		quit()
