#Made by Doug Guzman
#All rights reserved(If there are any)

print "Welcome to the world of Atheria. What is your name? "
name = gets.chomp

print "What do you want your stats to be? You have 30 points to spend. "
points = 30
print "Strength "
str = Float(gets.chomp)
print "Dexterity "
dex = Float(gets.chomp)
print "Constitution "
con = Float(gets.chomp)
print "Intelligence "
int = Float(gets.chomp)
#{str} + #{dex} + #{con} + #{int} = 30
hp = #{con} * .5 + 10
print "Now you are ready for your adventure! "

room = "tavern"
while room == "tavern"
	print "The tavern is loud and crowded. You just finished your last drink and are ready to go somewhere. The exit is to the south, there are stairs to the east. "
dir = gets.chomp
if dir == "n"
	print "You encounter a group of tightly packed people and cannot move further. "
elsif dir == "s"
	room = "street"
elsif dir == "w"
	print "You see a solid wall, and cannot move that way. "
elsif dir == "e"
	room = "thallway"
elsif dir == "n"
	print "You enocounter a group of tightly packed people, and cannot go any farther. "
elsif dir == "stats"
	print "Strength = #{srt}, Dexterity = #{dex}, Constitution = #{con}, Intelligence = #{int}, and your current healt h is #{hp}. "
else print "Unknown command. The valid commands are n, s, e, w, and stats. "
while room == "street"
	print "You push your way through the crowd, and exit the tavern. You are on a street that goes east and west. The city gate is to the west. "
dir = gets.chomp
if dir == "s"
	print "You try to go north, and encounter a building. Try as you might, you cannot phase through it. "
elsif dir == "n"
	room = "tavern"
elsif dir == "e"
	room == "uppertown"
elsif dir == "w"
	room == "forest"
elsif dir == "stats"
	 print "Strength = #{srt}, Dexterity = #{dex}, Constitution = #{con}, Intelligence = #{int}, and your current healt h is #{hp}. "
end
