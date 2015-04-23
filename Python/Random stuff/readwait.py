import sys
import select
import os
# just a warning, I found this code online somewhere, needs researched to 
# understand it
i = 0
while True:
	os.system('cls' if os.name == 'nt' else 'clear')
	print ("I'm doing stuff. Press Enter to stop me!")
	print (i)
	if sys.stdin in select.select([sys.stdin], [], [], 0)[0]:
		line = input()
		break
	i += 1


