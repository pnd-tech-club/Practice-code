#This is a framework for text adventures. It will allow anyone who understands the framework to make a text adventure
#Some code is drawn from Matthew Kencht's Kazoo Quest game
#Credit to Sean Hinchee for help debugging
#Location variables
$x = 0
$y = 0
$savex = 0
$savey = 0
#stats
$lv = 1
$health = 0
$dawizard = 0
$magix = 0
$str = 0
$stra = 0
$dex = 0
$dexa = 0
$con = 0
$cona = 0
$cha = 0
$chaa = 0
$int = 0
$inta = 0
#Level variables
$xp = 0
$lvu = 5
$lvmax = 0
$lvmaxc = 5
$cspell = 0
#Fight variables
$fight = 0
$mondawizard = 0
$monhp = 0
$mondam = 0
$monstr = 0
$dodgevar = 0
$dodgedam = 0
$dodges = 0
$spellc = 0
$spelldam = 0
$monhit = 0
$runc = 0
$xpg = 0
#Room info
$rinfo = 0
#Total points for all stats
$stotal = 25
#Stat loop variable
$statc = 1
#Game loop variable
$run = 0
#control variables
$com = 0
$enc = 0
$encc = 0
#Room showing variable
$show = 0
puts "The point of this game is to become as powerful as possible before dying. "
#User picks stats here
puts "You have #{$stotal} or points to spend "
while $statc == 1
  puts "Strength "
  $str = Float(gets.chomp)
  puts "Dexterity "
  $dex = Float(gets.chomp)
  puts "Constitution "
  $con = Float(gets.chomp)
  puts "Chararisma "
  $cha = Float(gets.chomp)
  puts "Intellegence"
  $int = Float(gets.chomp)
  $stotal2 = $str + $dex + $con + $cha + $int
  if $stotal2 == $stotal
    print "Stats input. Now loading adventure. Press enter to continue"
    $statc = 0
    $run = 1
    $spellz = 1
  else print "Incorrect numbers. Please re-choose stats"
  end
end
while $run == 1
  $maxhealth = ($con / 2) * 3
  $health = $maxhealth
  $dawizard = ($str + $dex) / 2
  $magix = ($cha + $int) / 2
  $spelldam = ($int + $cha - $con) * 2
  $com = $stdin.gets.chomp.downcase
  if $com == "n"
    $y = $y + 1
    $show = 0
    $enc = rand(10)
  elsif $com == "s"
    $y = $y - 1
    $show = 0
    $enc = rand(10)
  elsif $com == "e"
    $x = $x + 1
    $show = 0
    $enc = rand(10)
  elsif $com == "w"
    $x = $x - 1
    $show = 0
    $enc = rand(10)
  elsif $com == "help"
    puts "The valid commands are"
    puts "n to move north"
    puts "s to move south"
    puts "e to move east"
    puts "w to move west"
    puts "quit to quit"
    puts "stats to view stats"
    puts "loc to view location"
    puts "view to reread room description"
    puts "rest to heal"
  elsif $com == "loc"
    puts "X == #{$x}"
    puts "Y == #{$y}"
  elsif $com == "quit"
    $run = 0
    exit(0)
  elsif $com == "clear"
    clear = `clear`
    print "#{clear}"
  elsif $com == "stats"
    puts "Your stats are "
    puts "Level: #{$lv}"
    puts "Damage: #{$dawizard}"
    puts "Health: #{$health}"
    puts "Strength: #{$str}"
    puts "Constitution: #{$con}"
    puts "Dexterity: #{$dex}"
    puts "Charisma: #{$cha}"
    puts "Intellegence: #{$int}"
    puts "XP: #{$xp}"
  elsif $com == "look" or $com == "view"
    puts "#{$rinfo}"
  elsif $com == "rest"
    puts "You lay down to rest and regain some health"
    $health = $health + rand(4) unless $health >= $maxhealth
    $enc = rand(10)
  elsif $com == "Test"
    $str = 1000000
    $dex = 1000000
    $con = 1000000
    $int = 1000000
    $cha = 1000000
    $lv = 1000000
    puts "Testing stats input"
  end
  if $y == 0 and $x == 0
    $savex = 0
    $savey = 0
    if $show != 1
    $rinfo = "You are in a forest. You may move anywhere you like. "
    puts "#{$rinfo}"
    $show = 1
    end
  elsif $y == 1 and $x == 0
    $savex = 0
    $savey = 1
    if $show != 1
    $rinfo = "You look around and see some trees. Nothing new. "
    puts "#{$rinfo}"
    $show = 1
    end
  elsif $y == 0 and $x == 1
    $savex = 1
    $savey = 0
    if $show != 1
    $rinfo = "As you walk along, a branch almost hits you in the head. "
    puts "#{$rinfo}"
    $show = 1
    end
  elsif $y == -1 and $x == 0
    $savex = 0
    $savey = -1
    if $show != 1
    $rinfo = "You turn around and walk that way. The forest continues. "
    puts "#{$rinfo}"
    $show = 1
    end
  elsif $y == 0 and $x == -1
    $savex = -1
    $savey = 0
    if $show != 1
    $rinfo = "As you walk along, you notice your shoes have random yellow dots on them. They do nothing. "
    puts "#{$rinfo}"
    $show = 1
    end
  elsif $y == -1 and $x == 1
    $savex = 0
    $savey = -1
    if $show != 1
    $rinfo = "The forest is thinning. "
    puts "#{$rinfo}"
    $show = 1
    end
  elsif $y == -2 and $x == 0
    $savex = 0
    $savey = -1
    if $show != 1
    $rinfo = "You see movement, and it is a rabbit. "
    puts "#{$rinfo}"
    $show = 1
    end
  elsif $y == -1 and $x == -1
    $savex = 0
    $savey = -1
    if $show != 1
    $rinfo = "As you walk, birds are chirping. "
    puts "#{$rinfo}"
    $show = 1
    end
  elsif $y == 1 and $x == 1
    $savex = 0
    $savey = -1
    if $show != 1
    $rinfo = "Things have never seemed more calm than they currnetly are. "
    puts "#{$rinfo}"
    $show = 1
    end
  elsif $y == 1 and $x == -1
    $savex = 0
    $savey = -1
    if $show != 1
      $rinfo = "You notice a place. There is nothing there. "
      puts "#{$rinfo}"
      $show = 1
    end
  elsif $y == 2 and $x == 0
    $savex = 0
    $savey = 2
    if $show != 1
      $rinfo = "You walk along and see a beach ahead. "
      puts "#{$rinfo}"
      $show = 1
    end
  elsif $y == 1 and $x == 2
    $savex = 2
    $savey = 1
    if $show != 1
      $rinfo = "You walk, and start to see the end of the forest. "
      puts "#{$rinfo}"
      $show = 1
    end
  elsif $y == -3 and $x == -2
    $savex = -2
    $savey = -3
    if $show != 1
      $rinfo = "You walk and walk and walk and walk... "
      puts "#{$rinfo}"
      $show = 1
    end
  elsif $y == -3 and $x == -1
    $savex = -1
    $savey = -3
    if $show != 1
      $rinfo = "You walk and see a rabbit den. It is very large. "
      puts "#{$rinfo}"
      $show = 1
    end
  elsif $y == -2 and $x == -2
    $savex = -2
    $savey = -2
    if $show != 1
      $rinfo = "You move and see a mountian. "
      puts "#{$rinfo}"
      $show = 1
    end
  elsif $y == -2 and $x == -3
    $savex = -3
    $savey = -2
    if $show != 1
      $rinfo = "You walk up the mountian and see a vally. "
      puts "#{$rinfo}"
      $show = 1
    end
  elsif $y == -3 and $x == -2
    $savex = -2
    $savey = -3
    if $show != 1
      $rinfo = "You see stuff and things. "
      puts "#{$rinfo}"
      $show = 1
    end
  else puts "You cannot move there"
    $x = $savex
    $y = $savey
  end
  if $enc == 1
    $mone = rand(11)
  end
  if $mone == 1
    $mon = "Kobold"
    $encc = 1
    $monhp = 5
    $monstr = 3
    $xpg = 2
    puts "You have run into a #{$mon}"
  elsif $mone == 2
    $mon = "Troll"
    $encc = 1
    $monhp = 30
    $monstr = 15
    $xpg = 20
    puts "You have run into a #{$mon}"
  elsif $mone == 3
    $mon = "Magic Llama"
    $encc = 1
    $monhp = 10
    $monstr = 20
    $xpg = 15
    puts "You have run into a #{$mon}"
  elsif $mone == 4
    $mon = "Gremlin"
    $encc = 1
    $monhp = 5
    $monstr = 1
    $xpg = 1
    puts "You have run into a #{$mon}"
  elsif $mone == 5
    $mon = "Vorpal Bunny"
    $encc = 1
    $monhp = 5
    $monstr = 10
    $xpg = 5
    puts "You have run into a #{$mon}"
  elsif $mone == 6
    $mon = "Thing"
    $encc = 1
    $monhp = 10
    $monstr = 5
    $xpg = 5
    puts "You have run into a #{$mon}"
  elsif $mone == 7
    $mon = "$#&*#*^(#))@%})"
    $encc = 1
    $monhp = 40
    $monstr = 50
    $xpg = 50
    puts "You have run into a #{$mon}"
  elsif $mone == 8
    $mon = "Goat"
    $encc = 1
    $monhp = 5
    $monstr = 0
    $xpg = 1
    puts "You have run into a #{$mon}"
  elsif $mone == 9
    $mon = "Angel"
    $encc = 1
    $monhp = 20
    $monstr = 10
    $xpg = 10
    puts "You have run into a #{$mon}"
  elsif $mone == 10
    $mon = "Demon"
    $encc = 1
    $monhp = 10
    $monstr = 20
    $xpg = 10
    puts "You have run into a #{$mon}"
  elsif $mone == 11
    $mon == "Crash"
    puts "You ran into the worst monster possible. "
    $run = 0
  end
  while $encc == 1
    puts "What would you like to do? "
    puts "1: Attack"
    puts "2: Dodge"
    puts "3: Magic"
    puts "4: Run"
    $fight = Float(gets.chomp)
    if $fight == 1
      $mondam = rand($dawizard)
      puts "You dealt #{$mondam} damage to the monster! "
      $monhp = $monhp - $mondam
    elsif $fight == 2
      $dodgevar = rand(5)
      if $dodgevar == 1 or $dodgevar == 2 or $dodgevar == 3
        $dodges = 1
      else $dodges = 0
      end
    elsif $fight == 3
      puts "Try for this yourself, you will never get anywhere unless you practice! "
    elsif $fight == 4
    $runc = rand(5)
      if $runc == 1 or $runc == 2 or $runc == 3
        puts "You ran from battle! "
        $encc = 0
        $enc = 0
      else puts "You failed to run! "
      end
    end
    unless $dodges == 1
      $mondam = rand($monstr)
      puts "The monster hit you for #{$mondam} damage! "
      $health = $health - $mondam
    else $mondam = rand($monstr)
      $dodgedam = rand($mondam - $dex)
      puts "The monster hit you for #{$dodgedam} damage1 "
      $dodges = 0
    end
    if $monhp <= 0
      puts "You beat the monster! "
      $encc = 0
      $enc = 0
      $mone = 0
      $mon = 0
      $xp = $xp + $xpg
    elsif $health <= 0
      puts "You have died. "
      $encc = 0
      $enc = 0
      $run = 0
    end
  while $xp >= $lvu
    puts "You have leveled up!"
    puts "You have #{$lvmaxc} points to spend"
    puts "Strength"
    $stra = Float(gets.chomp)
    puts "Dexterity"
    $dexa = Float(gets.chomp)
    puts "Constitution"
    $cona = Float(gets.chomp)
    puts "Charisma"
    $chaa = Float(gets.chomp)
    puts "Intelligence"
    $inta = Float(gets.chomp)
    $lvmax = $stra + $dexa + $cona + $chaa + $inta
    if $lvmaxc == $lvmax
      $str += $stra
      $dex += $dexa
      $con += $cona
      $cha += $chaa
      $int += $inta
      $lvu = $lvu + $xp - 3
      $lvmaxc += 3
      $xp = 0
      $lv += 1
      puts "#{$rinfo}"
    else puts "Invalid stats. Please rechoose"
    end
  end
end
end
