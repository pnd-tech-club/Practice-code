#This is a calculator that takes two or one number from the user, and performs a specified operation on them. The if statement a the begining of each one tells what that operation does.
#Developed by DOug Guzman
#Contributers - Sean Hinchee for the loop, Matthew Knecht for a loop concept not implmented
a = 1
while a == 1
print "Please enter a valid operation. "
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
		print "What is your divisor? "
		dnum1 = Float(gets.chomp)
		print "What is your dividen? "
		dnum2 = Float(gets.chomp)
		puts "#{dnum1 / dnum2}"
	elsif op =="exponent"
		print "What is the base? "
		enum1 = Float(gets.chomp)
		print "What is the power? "
		enum2 = Float(gets.chomp)
		puts "#{enum1 ** enum2}"
	elsif op == "root"
		print "What is the number you want the square root of?(It will be made positive) "
		qnum1 = Float(gets.chomp)
		qnum2 = qnum1.abs
		qnum3 = Math.sqrt(qnum2)
		puts "#{qnum3}"
	elsif op == "remain"
        print "What is your divisor? "
        rnum1 = Float(gets.chomp)
        print "What is your second dividen? "
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
        elsif op == "root4"
		print "What number do you want the fourth root of? "
		r4num = Float(gets.chomp)
		r4num2 = Math.sqrt(r4num)
		r4num3 = Math.sqrt(r4num2)
		puts "#{r4num3}"
	elsif op == "root3""
		print "What number do you want the third root of? "
		r3num = Float(gets.chomp)
		r3num2 = r3num ** 1/3
		print "#{r3num2}"
	elsif op == "ln"
		print "What number do you want the natural log of? "
		l2num = Float(gets.chomp)
		l2num2 = Math.log(l2num)
		puts "#{l2num2}"
	elsif op == "clog"
		print "What is your X? "
		clnum = Float(gets.chomp)
		print "What is your base? "
		clnum2 = Float(gets.chomp)
		clnum3 = Math.log(clnum, clnum2)
		puts "#{clnum3}"
    elsif op == "quit"
        a = 0
    elsif op == "help"
		puts "The valid operations are multiply, add, subtract, divide, root, log10, log2, sin, cos, tan, remain, root4, root3, ln, and clog(custom log). Use quit to quit.  "

	else puts "The valid operations are multiply, add, subtract, divide, root, log10, log2, sin, cos, tan, remain, root4, root3, ln, and clog(custom log). Use quit to quit. "
end
end
