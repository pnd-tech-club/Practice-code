#This is a program that makes punnet squares for genetic crosses.
#I do know that the code it very convoluted, and must be remade.
$com = 0
$start = 1
$outcount = 0
$g1 = 0
$g2 = 0
$g3 = 0
$g4 = 0
$g5 = 0
$g6 = 0
$g7 = 0
$g8 = 0
$g9 = 0
$g10 = 0
while $start == 1
	print "What type of square would you like to make? "
	$com = gets.chomp
	if $com == "2x2"
		puts "__ __
		    __
		    __"
		puts "First letter? "
		$g1 = gets.chomp
		$outcount = $outcount + 1
		puts " "
		puts " "
		puts " "
		puts " "
		puts "#{$g1} __
		   __
		   __"
		puts "Second letter? "
		$g2 = gets.chomp
		$outcount = $outcount + 1
		puts " "
		puts " "
		puts " "
		puts " "
		puts "#{$g1}  #{$g2}
		   __
		   __"
		puts "Third letter? "
		$g3 = gets.chomp
		$outcount = $outcount + 1
		puts " "
		puts " "
		puts " "
		puts " "
		puts "#{$g1}  #{$g2}
		   #{$g3}
		   __"
		puts "Forth letter? "
		$g4 = gets.chomp
		$outcount = $outcount + 1
		puts " "
		puts " "
		puts " "
		puts " "
		puts "#{$g1}  #{$g2}
		   #{$g3}
		   #{$g4}"
		sleep(1)
		puts "The #{$outcount} possible outcomes are "
		puts "#{$g1} #{$g3}"
		puts "#{$g1} #{$g4}"
		puts "#{$g2} #{$g3}"
		puts "#{$g2} #{$g4}"
		$outcount = 0
	elsif $com == "help"
		puts "The only square this program can currently do is a 2x2. That is also the command for it. Will add other shapes later. Use quit to exit the program. You can ignore the outcount variable, and the first print line of the answer. That is for something that will be in a diffrent program. "
	elsif $com == "quit"
	$start = 0
		
end
end
