#This is a remake of the calculator I made earler.
#Made by Doug Guzman
#Contributers - Sean Hinchee for the loop designe

$n1 = "First number? "
$n2 = "Second number? "
$a = "1"
while $a == "1"
print "Please enter your operation. "
	op = gets.chomp
	if op == "add"
		print "_ + _? "
		print "#{$n1}"
		anum1 = Float(gets.chomp)
		print "#{anum1} + _? "
		print "#{$n2}"
		anum2 = Float(gets.chomp)
		anum3 = "#{anum1 + anum2} "
		puts "#{anum3} "
	elsif op == "subtract"
		print "_ - _? "
		print "#{$n1}"
		snum1 = Float(gets.chomp)
		print "#{$n1} - _ "
		print "#{$n2}"
		snum2 = Float(gets.chomp)
		snum3 = snum1 - snum2
		puts "#{snum3}"
	elsif op == quit
		$a = 0
		
end
end

