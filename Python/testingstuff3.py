#Written in Python 2.something.or.other by Matthew Knecht
#Mainly messing around with numbers and math
stop = 0
stop = stop + 1

def count():
	global num

num = int(raw_input('# '))
while stop != num:
	while num > 0:
		num = num - 1
		print num
	if num == 0:
		quit()
	elif num < 0:
		print "lol nope"
		quit()
