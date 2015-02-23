#This is a calculator that takes 2 or one number from the user, and performs a specified operation on them. The if statement a the begining of each one tells what that operation does.
print "Please enter operation. "
op = gets.chomp
if op == "multiply"
	print "What is your first number? "
	mnum1 = Float(gets.chomp)
	print "What is your second number? "
	mnum2 = Float(gets.chomp)
	puts "#{mnum1 * mnum2}"
elsif op == "add"
	print "What is your first number? "
	anum1 = Float(gets.chomp)
	print "What is your second number? "
	anum2 = Float(gets.chomp)
	puts "#{anum1 + anum2}"
elsif op == "subtract"
	print "What is your first number? "
	snum1 = Float(gets.chomp)
	print "What is your second number? "
	snum2 = Float(gets.chomp)
	puts "#{snum1 - snum2}"
elsif op == "divide"
	print "What is your first number? "
	dnum1 = Float(gets.chomp)
	print "What is your second number? "
	dnum2 = Float(gets.chomp)
	puts "#{dnum1 / dnum2}"
elsif op =="exponent"
	print "What is your first number? "
	enum1 = Float(gets.chomp)
	print "What is your second number? "
	enum2 = Float(gets.chomp)
	puts "#{enum1 ** enum2}"
elsif op == "root"
	print "What is the number you want the square root of?(It will be made positive) "
	qnum1 = Float(gets.chomp)
	qnum2 = qnum1.abs
	qnum3 = Math.sqrt(qnum2)
	puts "#{qnum3}"
elsif op == "remain"
        print "What is your first number? "
        rnum1 = Float(gets.chomp)
        print "What is your second number? "
        rnum2 = Float(gets.chomp)
        puts "#{rnum1 % rnum2}"
elsif op ==  "log10"
	print "What number do you want the log10 of? "
	lnum = Float(gets.chomp)
	lnum2 = Math.log10(lnum)
	puts "#{lnum2}"
elsif op =="log2"
	print "What number do you want the log2 of? "
	l2num = Float(gets.chomp)
	l2num2 = Math.log2(l2num)
	puts "#{l2num2}"
elsif op == "cos"
	print "What number do you want the cosine of? "
	cnum = Float(gets.chomp)
	cnum2 = Math.cos(cnum)
	puts "#{cnum2}"
elsif op == "sin"
	print "What number do you want the sine of? "
	s2num = Float(gets.chomp)
	s2num2 = Math.sin(s2num)
	puts "#{s2num2}"
elsif op == "tan"
	print "What number do you want the tangent of? "
	tnum = Float(gets.chomp)
	tnum2 = Math.tan(tnum)
	puts "#{tnum2}"

elsif op == "help"
	print "The valid operations are multiply, add, subtract, divide, root, log10, log2, sin, cos, tan, and remain.  "

else print "The valid operations are multiply, add, subtract, divide, root, log10, log2, sin, cos, tan, and remain. "
end
