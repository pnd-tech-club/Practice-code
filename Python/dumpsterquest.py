#A reworked version of quest written by Matthew Knecht in Python 2.7
import random
global weapon
weapon = 0
#Weapon list: 0 = hands, 1 = stick, 2 = sharpened stick, 3 = rusty sword, 4 = dull sword, 5 = sharp spear, 6 = polished axe sword, 7 = The Blade of Trash
global damage
damage = 1
global torch_true
torch_true = 0
global rock_true
rock_true = 0
global branch_true
branch_true = 0
global inventory
inventory = ""
global stop
stop = 0
global time
time = 0
global skip
skip = 0
global encounter
encounter = 0
global x
global y
x = 0
y = 0
print "You have found yourself in a dimly lit cave.  You have no memory of how you got here or who you are.  There is a path to the north and south You see a torch on the ground."
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
	if act == "num":
		print x
		print y
	if act == "take":
		print "What do you want to take?"
		if x == 0 and y == 0 and torch_true == 0:
			items = "torch"
			print items
			act_take = raw_input('? ')
			if act_take == "torch":
				inventory = inventory + "\n" + items
				torch_true = 1
				print "You pick up the torch and are able to see better."
		elif x == 2 and y == 1 and branch_true == 0:
			items = "branch"
			print items
			act_take = raw_input('? ')
			if act_take == "branch":
				inventory = inventory + "\n" + items
				branch_true = 1
			else:
				"You don't see that here."
	if act == "inv":
		print inventory
	if act == "look":
		skip = 0
	elif act == "quit":
		print "Are you sure you want to quit? (yes/no)"
		quit_response = raw_input('> ')
		if quit_response == "yes":
			quit()
		else:
			skip = 0
	elif act == "OP420":
		weapon = 7
	elif act == "info":
		print "Damage: %r\nHealth:\nDefense:" % (damage)
	elif act == "credits":
		print "This game was written by Matthew Knecht in Python 2.7.  It is currently in V0.0.7.  The story of the game revolves around a player who has lost his memory and has to find his way back to his dumpster.  The game doesn't have much content- but that will be resolved shortly.  Thanks for playing!"
	if act == "help":
		print "-help \n -look \n -wait \n -use \n -take \n -move(n,s,e,w) \n -back \n -info"
	
	if x == 0 and y == 0 and torch_true == 0:
		encounter = 0
		roominfo = "You have found yourself in a dimly lit cave.  You have no memory of how you got here or who you are.  There is a path to the north and south.  You see a torch on the ground."
		print roominfo
	elif x == 0 and y == 0 and torch_true == 1:
		roominfo = "Your torch lights up the walls of the cave.  There is a path to the north and south."
		print roominfo
	elif x == 0 and y == 1 and torch_true == 0:
		roominfo = "You start walking to the north yet find that the mysterious light is dimming rapidly.  You decide to turn back until you find a light source."
		print roominfo
		y -= 1
	elif x == 0 and y == 1 and torch_true == 1:
		roominfo = "You begin to walk to the north, allowing your torch to light the way.  As you walk you begin to hear a slight howl of wind from ahead of you.  There is a path to the east."
		print roominfo
	elif x == 1 and y == 1:
		roominfo = "You walk to the east and begin to feel the breeze picking up.  You look ahead of you and see a light far ahead."
		print roominfo
	elif x == 2 and y == 1 and branch_true == 0:
		encounter = 0
		roominfo = "You reach the end of the tunnel and feel the heat of the sun around you.  The trees tower over you and you hear the sound of rushing water to the north.  You see a good sized tree branch with a pointed end."
		print roominfo
	elif x == 2 and y == 1 and branch_true == 1:
		encounter = 0
		roominfo = "You reach the end of the tunnel and feel the heat of the sun around you.  The forest to the east glooms over you and you hear the sound of rushing water to the north."
		print roominfo
	elif x == 2 and y == 2:
		encounter = 1
		roominfo = "There is a swiftly flowing stream here.  To the east is a path to the forest.  You think you see a small cottage far to the north."
		print roominfo
#This is used to undo movement into an unexisting room
	else:
		if act == "n":
			y -= 1
		elif act == "s":
			y += 1
		elif act == "w":
			x += 1
		elif act == "e":
			x -= 1
	if weapon == 0:
		damage = 1
	elif weapon == 1:
		damage = 3
	elif weapon == 2:
		damage = 6
	elif weapon == 3:
		damage = 10
	elif weapon == 4:
		damage = 15
	elif weapon == 5:
		damage = 20
	elif weapon == 6:
		damage = 30
#This weapon is going to be available for debugging through the input of "OP420"
	elif weapon == 7:
		damage = 1337
	stop = 1
	act = ""
	act = raw_input('> ')

	stop = 0
