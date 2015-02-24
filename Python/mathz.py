from math import sqrt, cos, tan
p1 = '#1 '
p2 = '#2 '
n1 = ''
n2 = ''
funcs = ['add', 'sub', 'mul', 'div', 'exp', 'sqrt'] 
help = "Current operations are: \n -Add(add) \n -Subtract(sub) \n -Multiply(mul) \n -Divide(div) \n -Exponent(exp) \n -Square root(sqrt) \n -Tangent(tan) \n -Cosine(cos)"
stop = 0

print "What operation do you want to do?"

op = raw_input('> ')
while 0 == 0:
	while stop != 1:
		if op == "help":
			print help
		elif op == 'add':
			n1 = int(raw_input(p1))
			n2 = int(raw_input(p2))
			print n1 + n2
		elif op == 'sub':
			n1 = int(raw_input(p1))
			n2 = int(raw_input(p2))
			print n1 - n2
		elif op == 'mul':
			n1 = int(raw_input(p1))
			n2 = int(raw_input(p2))
			print n1 * n2
		elif op == 'div':
			n1 = int(raw_input(p1))
			n2 = int(raw_input(p2))
			print n1 / n2
		elif op == 'exp':
			n1 = int(raw_input(p1))
			n2 = int(raw_input('^ '))
			print n1 ** n2
		elif op == 'sqrt':
			n1 = int(raw_input(p1))
			print sqrt(n1)
		elif op == 'cos':
			n1 = int(raw_input(p1))
			print cos(n1)
		elif op == 'tan':
			n1 = int(raw_input(p1))
			print tan(n1)
		elif op == 'quit':
			quit()
		else:
			print help
		stop = 1
		n1 = ''
		n2 = ''
		op = raw_input('> ')
		stop = 0
