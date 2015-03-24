#This is a program that makes punnet squares for genetic crosses.
#I do know that the code it very convoluted, and must be remade.
$com = 0
$start = 0
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
while $start != 1
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
	elsif $com = "3x3"
		puts "__  __  __
		__
		__
		__"
		puts "First number? "
		
	elsif $com = "help"
		puts "The squares able to be done by this program are from 2x2 to 10x10, squares only. Will add other shapes later. "
	elsif $com == "quit"
	$start = 1
		
end
end
