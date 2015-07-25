print "Do you want to load a new character or load an old one? "
$do = gets.chomp
if $do == "new"
  $new = 1
elsif $do == "old"
  $run = 1
end
if $new == 1
  puts "Name? "
  $name = gets.chomp
  puts "Race? "
  $race = gets.chomp
  puts "Allignemnt? "
  $alli = gets.chomp
  puts "Str? "
  $str = Float(gets.chomp)
  puts "Dex? "
  $dex = Float(gets.chomp)
  puts "Con? "
  $con = Float(gets.chomp)
  puts "Int? "
  $int = Float(gets.chomp)
  puts "Wis? "
  $wis = Float(gets.chomp)
  puts "Cha? "
  $cha = Float(gets.chomp)
  puts "Abilities - PLEASE PUT SO YOU CAN READ"
  $ab = gets.chomp
  puts "Gold? "
  $gold = Float(gets.chomp)
  puts "Gear - PLEASE PUT SO YOU CAN READ "
  $gear = gets.chomp
  puts "Max HP? "
  $hpmax = Float(gets.chomp)
  $hp = $hpmax
  puts "Level? "
  $lv = Float(gets.chomp)
  File.open('Stats.sv', 'w') do |f1|
    f1.puts "Name : #{$name}"
    f1.puts "Race: #{$race}"
    f1.puts "Allingment: #{$alli}"
    f1.puts "Strength: #{$str}"
    f1.puts "Dexterity: #{$dex}"
    f1.puts "Constitution: #{$con}"
    f1.puts "Intelligence: #{$int}"
    f1.puts "Wisdom: #{$wis}"
    f1.puts "Charisma: #{$cha}"
    f1.puts "Abilities: #{$ab}"
    f1.puts "Gold: #{$gold}"
    f1.puts "Gear: #{$gear}"
    f1.puts "Max HP: #{$hpmax}"
    f1.puts "Current HP: #{$hp}"
    f1.puts "Level: #{$lv}"
  puts "Creation complete. Now opening main program. "
end
  $run = 1
  $new = 0
end
while $run == 1
  File.open('Stats.sv', 'r+') do |f2|
  $hp = f2.$hp
  puts "What would you like to do? "
  $com = gets.chomp
  if $com == "stats"
    $stat = File.read('Stats.sv')
    puts "#{$stat}"
  elsif $com == "damage"
    puts "How much? "
    $dam = Float(gets.chomp)
    $hp = $hp - $dam
    puts "#{$hp}"
    f2.puts "Your current HP is: #{$hp}"
  elsif $com == "heal"
    puts "How much? "
    $dam = Float(gets.chomp)
    $hp = $hp + $dam
    f2.puts "Your current HP is: #{$hp}"
  elsif $com == "roll" or $com == "dice"
    puts "What die do you want to roll? "
    $dice = gets.chomp
    if $dice == "d4"
      $roll = rand(4)
      puts "You rolled a #{$roll}"
    elsif $dice == "d6"
      $roll = rand(6)
      puts "You rolled a #{$roll}"
    elsif $dice == "d8"
      $roll = rand(8)
      puts "You rolled a #{$roll}"
    elsif $dice == "d10"
      $roll = rand(10)
      puts "You rolled a #{$roll}"
    elsif $dice == "d12"
      $roll = rand(12)
      puts "You rolled a #{$roll}"
    elsif $dice == "d20"
      $roll = rand(20)
      puts "You rolled a #{$roll}"
    end
  elsif $com == "quit"
    $run = 0
    exec 'clear'
  end
end
end
