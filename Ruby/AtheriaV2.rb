#remake of the remake (convoluted much) of Atheria
$health = 100
$hunger = 100
$y = 0
$x = 0
$start = 0
$act = 0
$savex
$savey
while $start != 1
	if $x == 0 and $y == 0
		$savex = 0
		$savey = 0
		print "As you look around the cavern, you see that you are the last one there. There is a door to the south and a staircase to the east. "
	elsif $x == -1 and $y == 0
		$savex = -1
		$savey = 0
		print "As you walk out the door, you see a street runnning east and west. "
	else print "You cannot move there. "
		$x = $savex
		$y = $savey
	end
	$act = gets.chomp
	if $act == "n" or "north"
		$y = $y + 1
	elsif $act == "s" or "south"
		$y = $y - 1
	elsif $act == "e" or "east"
		$x = $x + 1
	elsif $act == "w"or "west"
		$x = $x - 1
	if $act == "help"
		puts "The commands are: "
		puts "n"
		puts "s"
		puts "e"
		puts "w"
		puts "info"
		puts "help"
	elsif $act == "quit"
		$start = 1
		exec "clear"
	else puts "Unknown command "
end
end
end
