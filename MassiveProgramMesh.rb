#This is a test, pleace do not delete it. It cannot go into the practice code folder, due to the way it is currently coded.
$folder = 0
$com = 0
$start = 0
$back = 0
while $start != 1
	puts "What folder would you like to go to? "
		`ls`
	$com == gets.chomp
	if $com == "python"
		$folder = 1
		$back = 1
	elsif $com == "ruby"
		$folder = 2
		$back = 1
	elsif $com == "sean"
		$folder = 3
		$back = 1
	elsif $com == ".."
		`cd ..`
		$back == $back - 1
	elsif $com == "ls"
		`ls`
	elsif $com == "quit"
		$start == 1
	end
		if $folder == 1 and $back != 1
			`cd python`
		elsif $folder == 1 and $back == 1
			`cd ..`
			`cd python`
		elsif $folder == 2 and $back != 1
			`cd ruby`
		elsif $folder == 2 and $back == 1
			`cd ..`
			`cd ruby`
		elsif $folder == 3 and $back != 1
			`cd sean`
		elsif $folder == 3 and $back == 1
			`cd ..`
			`cd sean`
		else puts "Invalid folder"
		end
		
end