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
#operation for geometry
$op4 = 0
#Variable for read
$read = 0
#Loop variables
$a = 1
$b = 0
puts "The valid operations are as follows. "
puts "-add"
puts "-subtract"
puts "-multiply"
puts "-divide"
puts "-exponent"
puts "-root"
puts "-sin"
puts "-cos"
puts "-tan"
puts "-answer"
puts "-purge"
puts "-read"
puts "-geometry"
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
	elsif $op == "sin"
		print "#{$p1}"
		$n1 = Float(gets.chomp)
		$n3 = Math.sin($n1)
		puts "#{$n3}"
	elsif $op == "tan"
		print "#{$p1}"
		$n1 = Float(gets.chomp)
		$n3 = Math.tan($n1)
		puts "#{$n3}"
	elsif $op == "cos"
		print "#{$p1}"
		$n1 = Float(gets.chomp)
		$n3 = Math.cos($n1)
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
		puts "-sin"
		puts "-cos"
		puts "-tan"
		puts "-answer"
		puts "-purge"
		puts "-read"
		puts "-geometry"
		puts "-ln"
	elsif $op == "purge"
		print "What variable to you want to purge? "
		$pr = gets.chomp
		if $pr == "n1"
			$n1 = 0
			puts "Purge successful"
		elsif $pr == "n2"
			$n2 = 0
			puts "Purge successful"
		elsif $pr == "n3"
			$n3 = 0
			puts "Purge successful"
		elsif $pr == "all"
			$n1 = 0
			$n2 = 0
			$n3 = 0
			$op3 = 0
			$op = "start"
		puts "Purge successful"
		end
	elsif $op == "set"
		print "Which varaible would you like to set? "
			$set = gets.chomp
			if $set == "n1"
				$n1 = Float(gets.chomp)
				puts "n1 successfully set"
			elsif $set == "n2"
				$n2 = Float(gets.chomp)
				puts "n2 successfully set"
			elsif $set == "n3"
				$n3 = Float(gets.chomp)
				puts "n3 successfully set"
			end
	elsif $op == "clear"
		$cl = `clear`
		print "#{cl}"
	elsif $op == "geometry"
		$b = 1
		while $b == 1
			print "What equation will you do? "
			$op4 = gets.chomp
			if $op4 == "lwh"
				print "Length? "
				$n1 = Float(gets.chomp)
				print "Width? "
				$n2 = Float(gets.chomp)
				print "Height? "
				$n3 = Float(gets.chomp)
				$n3 = $n1 * $n2 * $n3
				puts "#{$n3}"
			elsif $op4 == "pir2"
				puts "Radius? "
				$n1 = Float(gets.chomp)
				$n3 = ($n1 ** 2) * 3.14
				puts "#{$n3}"
			elsif $op4 == "quit"
				$b = 0
			elsif $op4 == "help"
				puts "The valid geometry functions are "
				puts "-Area of a cube (lwh)"
			end
		end
	elsif $op == "physics"
		$c = 1
		while $c == 1
			print "What equation would you like to do? "
			$op5 == gets.chomp
			if $op5 == "Velocity"
				puts "V = d/t "
				print "#{$p1}"
				$n1 = Float(gets.chomp)
				puts "V = #{$n1}/t"
				print "#{$p2}"
				$n2 = Float(gets.chomp)
				$n3 = $n1 / $n2
				puts "#{$n3}"
			elsif $op5 == "Acceleration"
				puts "A = v/t "
				print "#{$p1}"
				$n1 = Float(gets.chomp)
				puts "A = #{$n1}/t"
				print "#{$p2}"
				$n2 = Float(gets.chomp)
				$n3 = $n1 / $n2
				puts "#{$n3}"
			elsif $op5 == "Final Velocity"
				puts "v1 = v2 + aΔt)"
				print "#{$p1}"
				$n1 = Float(gets.chomp)
				puts "v1 = #{$n1} + aΔt"
				print "#{$p2}"
				$n2 = Float(gets.chomp)
				puts "v1 = #{$n1} + #{$n2}Δt"
				print "Thrid number? "
				$n3 = Float(gets.chomp)
				$n3 = $n1 + ($n2 - $n3)
			elsif $op5 == "quit"
				$c = 0
			end
		end
#Notes for me to use in equations
#[3/4/15, 9:10:10 AM] Sean Hinchee: ∆x/∆y ≈ (x1-x2)/(y1-y2)
#[3/4/15, 9:10:32 AM] Sean Hinchee: ∆t ≈ t2-t1
			elsif $op5 == "quit"
				$c = 0
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
		elsif $op3 == "sin"
			print "#{$p1}"
			$n1 = Float(gets.chomp)
			$n3 = Math.sin($n1)
			puts "#{$n3}"
		elsif $op3 == "cos"
			print "#{$p1}"
			$n1 = Float(gets.chomp)
			$n3 = Math.cos($n1)
			puts "#{$n3}"
		elsif $op3 == "tan"
			print "#{$p1}"
			$n1 = Float(gets.chomp)
			$n3 = Math.cos($n1)
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
			puts "-sin"
			puts "-cos"
			puts "-tan"
			puts "-purge"
			puts "-read"
		elsif $op3 == "purge"
			$n1 = 0
			$n2 = 0
			$n3 = 0
			$op3 = 0
			$op = "start"
			puts "Purge successful"
		elsif $op3 == "clear"
			$cl = `clear`
			print "#{clear}"
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
			elsif $read == "all"
				puts "n1 == #$n1 "
				puts "n2 == #$n2 "
				puts "n3 == #$n3 "
end
end
end
