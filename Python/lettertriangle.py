import random
global length
global stop
global i
stop = 0
letters = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
i = int(raw_input('> '))
i = i - 1
while 0 == 0:
	while stop != 1:
		while i != 0:
			print random.choice(letters) * i
			i = i - 1
		stop = 1
		i = int(raw_input('> '))
		stop = 0
