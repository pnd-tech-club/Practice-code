#Map info for ease of access while debugging:
#Variable 'x' is west/east(ex. -1 would be to the west and +1 would be to the east)
#Variable 'y' is south/north(ex. -1 would be to the south and +1 would be to the north)
global x
global y
x = 0
y = 0
room_info = ''
class room_info():
	def room_info():
		from quest import x
		from quest import y
		if x == 0 and y == 0:
			roominfo = "You have found yourself in a dimly lit cave.  You have no memory of how you got here or who you are.  You see some items on the ground."
			print roominfo
		elif x == 0 and y == 1:
			roominfo = "blargh"
			print roominfo
		else:
			print "sdf"
import quest
