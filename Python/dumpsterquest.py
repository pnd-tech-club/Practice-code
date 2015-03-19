#Credits:
#Written by Matthew Knecht
#Written in Python 2.7

#CHANGELOG
#Version 0.0.1: 
# -Basic ideas and laying out of variables

#Version 0.0.2:
# -Laying out rooms and plotline

#Version 0.0.3:
# -Bug fixing
# -Added additional commands
# -Added more rooms

#Version 0.0.4:
# -More bug fixing

#Version 0.0.5:
# -Added some more basic ideas
# -Added more commands

#Version 0.0.6:
# -Added basic (aka broken) layout for enemy encounters
# -Fixed some little bugs pertaining to walking through walls

#Version 0.0.7
# -Added more to encounter system- currently still very buggy

#Version 0.1.0 (Major Update!)
# -Added lots to the encounter system
# -Removed some code for a dodge mechanic due to it causing bugs (code can be found nearly unmodified, just commented out)
# -FIXED ALL KNOWN BUGS, EXPLOITS, AND ISSUES (yay)

#Version 0.1.1
# -Fixed/added in the "run away" mechanic during encounters

#Version 0.1.2 (aka "The Remembering")
# -Added a changelog

import random
current_version = "v0.1.2"
global weapon
weapon = 0
#Weapon list: 0 = hands, 1 = stick, 2 = sharpened stick, 3 = rusty sword, 4 = dull sword, 5 = sharp spear, 6 = polished axe sword, 7 = The Blade of Trash
global dodged
dodged = 0
global dodge_dam
dodge_dam = 1
global damage
damage = 3
global max_hp
max_hp = 20
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
global enemy_set
enemy_set = 0
global time
time = 0
global encounter_time
encounter_time = 5 #Eventually implement something like encounter_time = random.randint(1, 100) and something like if encounter_time <= 10:      enemy ecnounter or something
global skip
skip = 0
global enemy_hp
enemy_hp = 1
global enemy_dam
enemy_dam = 0
global enemy_dodge
enemy_dodge = 0
global enemy_info
enemy_info = ""
global enemy_type
global fight_p
fight_p = enemy_info + "What do you want to do?\n 1: Attack\n2: Items\n3: Magic\n4: Run Away"
global f_act
global hp
hp = 20
global defe
defe = 1
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
	elif act == "etime":
		print encounter
		print encounter_time
	elif act == "wait":
			hp += random.randint(0, 1)
	elif act == "tp":
		x = int(raw_input('> '))
		y = int(raw_input('> '))
		torch_true = 1
	elif act == "info":
		print "Damage: %r\nHealth:%r\nDefense:%r" % (damage, hp, defe)
	elif act == "credits":
		print "This game was written by Matthew Knecht in Python 2.7.  It is currently in %r  The story of the game revolves around a player who has lost his memory and has to find his way back to his dumpster.  The game doesn't have much content- but that will be resolved shortly.  Thanks for playing!" % current_version
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
		enemy_type = "wolf"
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
	if encounter == 1:
		encounter_time -= 1
	if weapon == 0:
		damage = 3
	elif weapon == 1:
		damage = 5
	elif weapon == 2:
		damage = 8
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
	while encounter_time == 0:
		stop = 1
		while enemy_set != 1:
			if enemy_type == "wolf":
				enemy_hp = 15
				enemy_dam = random.randint(1, 3)
				enemy_dodge = 0
			enemy_info = "An %r suddenly appears!." % enemy_type
			print enemy_info
			enemy_set = 1
		act_f = raw_input(fight_p + "\n")
		if act_f == "1":
			enemy_hp = enemy_hp - damage
			print "You dealt %r damage to the %r!" % (damage, enemy_type)
		elif act_f == "2":
			print inventory
#		elif act_f == 3:
#			dodge_dam = hp - enemy_dam * random.randint(0,1)
#			hp = hp - dodge_dam
#			if dodge_dam == 0:
#				print "You dodged the attack!"
		elif act_f == "4":
			run_success = random.randint(0, 3)
			if run_success == 1:
				encounter_time = random.randint(5, 7)
				enemy_hp = 0
				print "You ran away!"
		else:
			print "You can't do that!"
		if enemy_hp > 0: #and dodge_dam != 0:
			hp = hp - enemy_dam + defe
			print "The %r dealt %r damage to you!" % (enemy_type, enemy_dam)
		if enemy_hp <= 0 and act_f != "4":
			print "You killed the" + enemy_type +"!"
			encounter_time = random.randint(5, 8)
		if hp <= 0:
			print "You have died!  Try again!"
			quit()
		stop = 0
	if hp > max_hp:
		hp = max_hp
