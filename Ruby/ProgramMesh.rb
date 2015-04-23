#This is very much expirmental. Don't expect anything from it soon
#To make this work, make sure that the programs that you want to load are in the same folder as this one
$start = 0
while $start != 1
	print "What program would you like to run? "
	$program = gets.chomp
		if $program == "math"
			load 'NewMaths.rb'
		elsif $program == "punnet square"
			load 'PunnetSquareMaker.rb'
		elsif $program == "laughing"
			print "Which version? "
			$version = gets.chomp
				if $version == "1"
					load 'laughing.rb'
				elsif $version == "2"
					load 'laughing2.rb'
				else puts "Invalid version. "
				end
		elsif $program == "shut up"
			print "Which version? "
			$version = gets.chomp
				if $version == "1"
					load 'Shutup.rb'
				elsif $version == "2"
					load 'ShutupV2.rb'
				else puts "Invalid version"
				end
		elsif $program == "help"
			puts "The valid commands are: "
			puts "math (NewMaths.rb)"
			puts "punnet square (PunnetSquareMaker.rb)"
			puts "laughing (laughing.rb and laughingV2.rb)"
			puts "shut up (Shutup.rb and ShutupV2.rb)"
			puts "quit (Quits the program)"
			puts "clear(Note:Will terminate program, no idea why. "
		elsif $program == "quit"
			$start = 1
		elsif $program == "clear"
			`clear`
		elsif $program == "python"
			`cd ..`
			`cd python`
			`python mathz.py`
		end
end
