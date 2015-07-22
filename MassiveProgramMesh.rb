#This is a test, pleace do not delete it. It cannot go into the practice code folder, due to the way it is currently coded.
$folder = 0
$com = 0
$start = 0
$back = 0
while $start != 1
	puts "What folder would you like to go to? "
		$tcom = `ls`
		puts "#$tcom"
	if $folder == 1 and $back != 1
		Dir.chdir"python"
	elsif $folder == 1 and $back == 1
		Dir.chdir".."
		Dir.chdir"python"
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
	$com == gets.chomp
	if $com == "python"
		$folder = 1
		$back = 1
	elsif $com == "ruby"
		$folder = 2
		$back = 1
	elsif $com == ".."
		Dir.chdir".."
		$back == $back - 1
	elsif $com == "ls"
		$tcom = `ls`
		puts "#$tcom"
	elsif $com == "quit"
		$start == 1
		exec"clear"
	end
		end
		
end
