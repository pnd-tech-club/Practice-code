$l = 0
$w = 0
$start = 0
$com = 0
$type = 0
$sl = $l
$sw = $w
$total = 0
while  $start != 1
	print "What type of cross would you like to do? "
	$type = gets.chomp
	if $type == "normal"
		print "What is the length of this square? "
		$l = Float(gets.chomp)
		$sl = $l
		print "What is the height of this square? "
		$w = Float(gets.chomp)
		$sw = $w
		puts "You have a #{$l} x #{$w} square. "
		puts "#{$sl} st/rd/th letter? "
		$sl = $sl - 1
		$total = $total + 1
		
	elsif $type == "dihybrid"
		puts "Work in progress, nothing here yet. "
	elsif $type == "quit"
		$start = 1
	else puts "Invalid type. The valid types are normal and dihybrid. "
end
end
