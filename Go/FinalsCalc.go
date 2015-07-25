package main

import "fmt"

grade := float64
score := float64
percent := float64
func main() {
	fmt.Print("What is your current grade? ", "\n")
	grade := fmt.Scanf(&grade)
	fmt.Print("What do you want your final grade to be? ", "\n")
	score:= fmt.Scanf(&score)
	fmt.Print("What percentage is your final worth? ", "\n")
	percent:= fmt.Scanf(&percent)
	total:= percent * score + (1 - percent) * grade
	fmt.Print("total", "\n")
}
