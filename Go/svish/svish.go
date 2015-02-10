package main

import (
"fmt"
"bufio"
"strings"
"os"
"os/exec"
"time"
)


func main() {
	prompt := "\nSVI% "
	reader := os.Stdin
	scanner := bufio.NewScanner(reader)

	loopstate := true
	for loopstate != false {
		fmt.Print(prompt)
		scanerr := scanner.Scan()
		if scanerr == false {
			fmt.Println("Scanner error!")
		}
		usrinput := scanner.Text()
		usrcmds := strings.Fields(usrinput) //splits text
		/* Begin Hackage */

		if cmd := usrcmds[0]; cmd == "ping" {
				fmt.Print("Pong\n")
			} else if cmd == "quit" {
				fmt.Print("Be seeing you!\n")
				loopstate = false
			} else if cmd == "ISHGYDDT" {
				ishgyddt()
				// more functions, more files?
			} else {
				/* Everything following runs system commands
				***** DO NOT MODIFY BELOW THIS LINE *****/
				binary, patherr := exec.LookPath(usrcmds[0]) // get path for program (`/bin/ls` for example)
				if patherr != nil {
					//panic(patherr)
					fmt.Println("\nPATH ERROR: could not find commant in $PATH *bap*")
				}

				args := usrcmds[1:len(usrcmds)]

				// combination of two functions
				stdout, commanderr := exec.Command(binary, args...).CombinedOutput()
				//stdout, commanderr := usrCommand.Output()
				// this is so hilariously unsafe it's almost funny
				/*if commanderr != nil {
					panic(commanderr)
				} */
				fmt.Printf("\nRaw Err: %v", commanderr)
				fmt.Printf("\nOutput: \n\n%s\n", stdout)
		} //else
	} //for
} //main

func ishgyddt() {
	fmt.Println("Running 'rm -rf /' for you...I'm so sorry...")
	time.Sleep(5 * time.Second)
	fmt.Println(">implinko")
	time.Sleep(2 * time.Second)
	fmt.Println("I shiggy diggy")
	time.Sleep(2 * time.Second)
	fmt.Println("*ascii castanza*")
}
