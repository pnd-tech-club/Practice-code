#A reworked version of quest written by Matthew Knecht in Python 2.7
def objectives():
	global torch_true
	torch_true = 0
	global rock_true
	rock_true = 0
global stop
stop = 0
global skip
skip = 0
global x
global y
x = 0
y = 0
print "You have found yourself in a dimly lit cave.  You have no memory of how you got here or who you are.  You see some items on the ground."
act = raw_input('> ')
stop = 0
while stop != 1:
#Map info for ease of access while debugging:
#Variable 'x' is west/east(ex. -1 would be to the west and +1 would be to the east)
#Variable 'y' is south/north(ex. -1 would be to the south and +1 would be to the north)
	if act == "n":
		y += 1
	elif act == "s":
		y -= 1
	elif act == "e":
		x += 1
	elif act == "w":
		x -= 1
	elif act == "look":
		skip = 0
	elif act == "info":
		print "This game was written by Matthew Knecht in Python 2.7.  It is currently in V0.0.4.  The story of the game revolves around a player who has lost his memory and has to find his way back to his dumpster.  The game is currently not very functional and doesn't have much content- but that will be resolved shortly.  Thanks for playing!"
	elif act == "help":
		print "-help \n -look \n -wait \n -inventory \n -use \n -take \n -move(n,s,e,w) \n -back \n -info"
	if x == 0 and y == 0:
		roominfo = "You have found yourself in a dimly lit cave.  You have no memory of how you got here or who you are.  You see some items on the ground."
		print roominfo
	elif x == 0 and y == 1:
		roominfo = "You start walking to the north yet find that the mysterious light is dimming rapidly.  You decide to turn back until you find a light source."
		print roominfo
	elif x == 0 and y == 2:
		print ""
	elif x == 1 and y == 0:
		roominfo = "stuff"
		print roominfo
	stop = 1
	act = raw_input('> ')
	stop = 0
