print "How many iterations would you like? (Use whole numbers) "
$count = Integer(gets.chomp)
$n1 = 1
$n2 = 0
puts "0"
$runc = 0
until $runc == $count
$n1 = $n1 + $n2
$n2 = $n1
puts "#$n1"
$runc = $runc + 1
end
