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
	svipath := "./svicmds"

	loopstate := true
	fmt.Printf("Your svipath is: %s\n\n", svipath)
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
			} else {
				/* Everything following runs system commands
				***** DO NOT MODIFY BELOW THIS LINE *****/
				binary, patherr := exec.LookPath(usrcmds[0]) // get path for program (`/bin/ls` for example)
				if patherr != nil {
					//panic(patherr)
					/* http://golang.org/pkg/path/ is worth looking into */
					altcmd := svipath + "/" + cmd
					altout, alterr := exec.Command(altcmd, "").CombinedOutput()
					fmt.Printf("\nRaw Err: %v", alterr)
					fmt.Printf("\nOutput: \n\n%s\n", altout)
				} else {

					args := usrcmds[1:len(usrcmds)]

					// combination of two functions
					stdout, commanderr := exec.Command(binary, args...).CombinedOutput()
					/*if commanderr != nil {
						panic(commanderr)
					} */
					fmt.Printf("\nRaw Err: %v", commanderr)
					fmt.Printf("\nOutput: \n\n%s\n", stdout)
				}//internal else
			} //else
		} //for
} //main
