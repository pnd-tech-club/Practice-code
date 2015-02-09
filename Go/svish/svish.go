package main

import (
"fmt"
"bufio"
"strings"
"os"
"os/exec"
)


/*
exec.Command() is the only real option here, use exec.LookPath() as well
newbufio.go in Sean's Go Playground does this right
*/
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
				fmt.Printf("FULL COMMAND: %s\n", usrcmds)

				binary, patherr := exec.LookPath(usrcmds[0]) // get path for program (`/bin/ls` for example)
				if patherr != nil {
					panic(patherr)
				}

				fmt.Printf("BINARY: %s\n", binary)

				args := usrcmds[1:len(usrcmds)]
				fmt.Printf("ARGS: %s\n", args)

				// combination of two things, stdout was previously usrCommand
				// *see exec/Command's returns
				stdout, _ := exec.Command(binary, args...).Output()
				//stdout, commanderr := usrCommand.Output()

				//if commanderr != nil {
				//	panic(commanderr)
				//}

				fmt.Printf("%s", stdout)
		} //else end
	} //for


	}
