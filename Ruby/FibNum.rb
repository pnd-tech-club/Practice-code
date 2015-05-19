$n1 = 1
$n2 = 0
$n3 = 0
$runc = 0
until $runc == 100
$n3 = $n1 + $n2
$n1 = $n2
$n2 = $n3
puts "#$n3"
$runc = $runc + 1
end
