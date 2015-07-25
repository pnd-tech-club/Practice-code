$grade = 0
$score = 0
$percent = 0
$total = 0
$cont = 0
$run = 1
while $run == 1
  puts "What is your current grade? "
  $grade = Float(gets.chomp)
  puts "What do you want as your final grade? "
  $score = Float(gets.chomp)
  puts "How much of your total grade is your final worth? Please put in the percentage. "
  $percent = Float(gets.chomp)
  $total = (($percent * $score) + (1 - $percent) * $grade)
  puts "You need a #{$total}% on the final to get your desired grade "
  puts "Would you like to calculate another grade? "
  $cont = gets.chomp
  if $cont == "y" or $cont == "yes"
    $run = 1
  else puts "Have a nice day and good luck! "
    $run = 0
  end
end
