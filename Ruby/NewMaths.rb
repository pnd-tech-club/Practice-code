#This is a remake of the calculator I made earler.
#Made by Doug Guzman
#Contributers - Sean Hinchee for the loop designe

$p1 = "First number? "
$p2 = "Second number? "
$n1 = Float(0)
$n2 = Float(0)
$n3 = Float(0)
$n4 = Float(0)
$op2 = "0"
$op3 = 0
$a = 1
while $a == 1
$op == "start"
print "Please enter your operation. "
	$op = gets.chomp
	if $op == "add"
		$op2 = "add"
		print "__ + __ "
		print "#{$p1}"
		$n1 = Float(gets.chomp)
		print "#{$n1} + _? "
		print "#{$p2}"
		$n2 = Float(gets.chomp)
		$n3 = "#{$n1 + $n2} "
		puts "#{$n3} "
	elsif $op == "subtract"
		$op2 = "subtract"
		print "__ - __ "
		print "#{$p1}"
		$n1 = Float(gets.chomp)
		print "#{$n1} - _ "
		print "#{$p2}"
		$n2 = Float(gets.chomp)
		$n3 = $n1 - $n2
		puts "#{$n3} "
	elsif $op == "multiply"
		$op2 = "multiply"
		print "__ * __ "
		print "#{$p1}"
		$n1 = Float(gets.chomp)
		print "#{$n1} * __ "
		print "#{$p2}"
		$n2 = Float(gets.chomp)
		$n3 = $n1 * $n2
		puts "#{$n3}"
	elsif $op == "divide"
		$op2 = "divide"
		print "__ / __ "
		print "#{$p1}"
		$n1 = Float(gets.chomp)
		print "#{$n1} / __ "
		print "#{$p2}"
		$n2 = Float(gets.chomp)
		$n3 = $n1 / $n2
		puts "#{$n3}"
	elsif $op == "exponent"
		$op2 = "exponent"
		print "__ ** __ "
		print "#{$p1}"
		$n1 = Float(gets.chomp)
		print "#{$n1} ** __ "
		print "#{$p2}"
		$n2 = Float(gets.chomp)
		$n3 = $n1 ** $n2
		puts "#{$n3}"
	elsif $op == "root"
		$op2 = "root"
		print "sqrt(__)"
		print "#{$p1}"
		$n1 = Float(gets.chomp)
		$n3 = Math.sqrt($n1)
		puts "#{$n3}"
	elsif $op == "quit"
		$a = 0
	elsif $op == "help"
		puts "The valid operations are as follows. "
		puts "-add"
		puts "-subtract"
		puts "-multiply"
		puts "-divide"
		puts "-exponent"
		puts "-root"
	elsif $op == "^[[A"
		if $op2 == "add"
			$op == "add"
		elsif $op2 == "subtract"
			$op == "subtract"
		elsif $op2 == "multiply"
			$op == "multiply"
		elsif $op2== "divide"
			$op == "divide"
		elsif $op2 == "exponent"
			$op == "exponent"
		elsif $op2 == "root"
			$op == "root"
		else
			$op == "start"
		end
	elsif $op == "answer"
		print "Please enter your operation again. "
		$op3 = gets.chomp
		if $op3 == "add"
			print "#{$n3} + __ "
			$n1 = Float(gets.chomp)
			$n4 =  $n3 + $n1
			puts "#{$n4}"
	
end
end
end
