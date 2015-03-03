#This is a remake of the calculator I made earler.
#Made by Doug Guzman
#Contributers - Sean Hinchee for the loop designe, Gary Guzman for help debugging

$p1 = "First number? "
$p2 = "Second number? "
#First number
$n1 = Float(0)
#Second number
$n2 = Float(0)
#Answer
$n3 = Float(0)
#operation for Answer
$op3 = 0
#Variable for read
$read = 0
#Loop variables
$a = 1
$b = 1
while $a == 1
#operation variable
$op == "start"
print "Please enter your operation. "
	$op = gets.chomp
	if $op == "add"
		print "__ + __ "
		print "#{$p1}"
		$n1 = Float(gets.chomp)
		print "#{$n1} + _? "
		print "#{$p2}"
		$n2 = Float(gets.chomp)
		$n3 = "#{$n1 + $n2} "
		puts "#{$n3} "
	elsif $op == "subtract"
		print "__ - __ "
		print "#{$p1}"
		$n1 = Float(gets.chomp)
		print "#{$n1} - _ "
		print "#{$p2}"
		$n2 = Float(gets.chomp)
		$n3 = $n1 - $n2
		puts "#{$n3} "
	elsif $op == "multiply"
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
		print "sqrt(__) "
		print "#{$p1}"
		$n1 = Float(gets.chomp)
		$n3 = Math.sqrt($n1)
		puts "#{$n3}"
	elsif $op == "log"
		print "#{$p1}"
		$n1 = Float(gets.chomp)
		print "#{$p2}"
		$n2 = Float(gets.chomp)
		$n3 = Math.log($n1, $n2)
		puts "#{$n3}"
	elsif $op == "ln"
		print "#{$p1}"
		$n1 = Flaot(gets.chomp)
		$n3 = Math.log($n1)
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
		puts "-answer"
		puts "-purge"
		puts "-read"
	elsif $op == "purge"
		$n1 = 0
		$n2 = 0
		$n3 = 0
		$op3 = 0
		$op = "start"
		puts "Purge successful"
	elsif $op == "troll"
		while 0 == 0
			print "troll troll troll troll "
			sleep(0.5)
		end
	elsif $op == "answer"
		print "Please enter another operation. "
		$op3 = gets.chomp
		if $op3 == "add"
			print "#{$n3} + __ "
			$n1 = Float(gets.chomp)
			$n3 =  $n3 + $n1
			puts "#{$n3}"
		elsif $op3 == "subtract"
			print "#{$n3} - __ "
			$n1 = Float(gets.chomp)
			$n3 = $n3 - $n1
			puts "#{$n3}"
		elsif $op3 == "multiply"
			print "#{$n3} * __ "
			$n1 = Float(gets.chomp)
			$n3 = $n3 * $n1
			puts "#{$n3}"	
		elsif $op3 == "divide"
			print "#{$n3} / __ "
			$n1 = Float(gets.chomp)
			$n3 = $n3 / $n1
			puts "#{$n3}"
		elsif $op3 == "exponent"
			print "#{$n3} ** __ "
			$n1 = Float(gets.chomp)
			$n3 = $n3 ** $n1
			puts "#{$n3}"
		elsif $op3 == "root"
			print "sqrt(#{$n3})"
			$n3 = Math.sqrt($n3)
			puts "#{$n3}"
		elsif $op3 == "quit"
			$a = 0
		elsif $op3 == "help"
			puts "The valid operations are as follows. "
			puts "-add"
			puts "-subtract"
			puts "-multiply"
			puts "-divide"
			puts "-exponent"
			puts "-root"
			puts "-purge"
			puts "-read"
		elsif $op3 == "purge"
			$n1 = 0
			$n2 = 0
			$n3 = 0
			$op3 = 0
			$op = "start"
			puts "Purge successful"
		end
		elsif $op == "read"
			print "What do you want to read? "
			$read = gets.chomp
			if $read == "n1"
				puts "#{$n1} "
			elsif $read == "n2"
				puts "#{$n2} "
			elsif $read == "n3"
				puts "#{$n3} "
	elsif $op == "geometry"
		while $b == 1
			$gop = "start"
			$p3 = "Third number? "
			$l = 0
			$w = 0
			$h = 0
			print "What equation do you want to perform?"
			if $gop == "lwh"
				print "#{$p1}"
				$l = Float(gets.chomp)
				print "#{$p2}"
				$w = Float(gets.chomp)
				print "#{$p3}"
				$h = Float(gets.chomp)
				$n3 = $l * $w * $h
				puts "#{$n3}"
		end
end
end
end
end
