#Remake of Atheria. Hope this one goes better than the last.
$y = 0
$x = 0
$n = $y + 1
$s = $y - 1
$w = $x + 1
$e = $x - 1
$rinfo = 0
$start = 0
$version = "0.0.0.2"
$act = 0
puts "#{$x} read x initial"
puts "#{$y} read y initial"
	puts "Welcome to the world of Aetheria. This is a text-based adventure game(duh) that is currently in version #{$version}. "
	puts "You will now start your adventure. "
	puts ""
	puts ""
	puts ""
	puts ""
while $start == 0

	if $x == 0 and $y == 0
		$rinfo = "As you look around the tavern, you see that things have mostly calmed down. There is a staircase to the east and the exit to the south. "
		puts "#{$rinfo}"
		$act = gets.chomp
	elsif $x == 1 and $y == 0
		puts "You try to walk to the kitchen, but are stopped by the wall. "
		$x = 0
		$y = 0
	elsif $x == 0 and $y == 1
		puts "You attempt to phase through the wall. It fails. "
		$x = 0
		$y = 0
	puts "#{$x} x read3"
	puts "#{$y} y read3"
	puts "#{$x} x read1"
	puts "#{$y} y read1"
	if $act == "n" or "north"
		$y = $y + 1
		puts "north"
	elsif $act == "s" or "south"
		$y = $y - 1
		print "south"
	elsif $act == "e" or "east"
		$x = $x - 1
		print "east"
	elsif $act == "w" or "west"
		$x = $x + 1
		print "west"
	elsif $act == "help"
		puts "The commands are "
		puts "n"
		puts "s"
		puts "e"
		puts "w"
		puts "view"
		puts "quit"
	elsif $act == "view"
		print "#{$rinfo}"
	elsif $act == "debug"
		puts "#{$x}"
		puts "#{$y}"
		puts "#{$rinfo}"
		puts "#{$start}"
	elsif $act == "quit"
		$start = 1
	else puts "Unknown command"
	end
	puts "#{$x} x read2"
	puts "#{$y} y read2"
end
end
