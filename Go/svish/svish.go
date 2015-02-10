package main

import (
"fmt"
"bufio"
"strings"
"os"
"os/exec"
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
			} else if cmd == "ISHYGDDT" {
				/* find a way to mess with $PATH and make a svicmds directory */
				/* http://golang.org/pkg/path/ is worth looking into */
				ishout, _ := exec.Command("./subcmds/ishygddt", "").CombinedOutput()
				fmt.Printf("\n\n%s\n", ishout)
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
				/*if commanderr != nil {
					panic(commanderr)
				} */
				fmt.Printf("\nRaw Err: %v", commanderr)
				fmt.Printf("\nOutput: \n\n%s\n", stdout)
		} //else
	} //for
} //main
