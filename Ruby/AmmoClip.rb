$cammo = 0
$cammos = 0
$tammo = 0
$tammos = 0
print "How many rounds per clip? "
$cammos = Float(gets.chomp)
print "How many total clips? "
$tammos = Float(gets.chomp)
$tammo = $tammos
$cammo = $cammos
while $tammo >= 0
  puts "#{$cammo}/#{$tammo}"
  $cammo -= 1
  if $cammo == 0
    $tammo -= 1
    $cammo = $cammos
  end
end
puts "You have ran out of ammo! "
