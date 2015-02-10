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

		if usrcmds[0] == "ping" {
				fmt.Print("Pong\n")
			} else if usrcmds[0] == "quit" {
				fmt.Print("Be seeing you!\n")
				loopstate = false
			} else {
				/***** Everything following runs system commands
				DO NOT MODIFY BELOW THIS LINE *****/
				/* Converts to []string from string */
				//usrcmds := strings.SplitN(usrinput, " ", 2)
				//fmt.Printf("FULL COMMAND: %s\n", usrcmds)

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
		} //else end
	} //for


	}
