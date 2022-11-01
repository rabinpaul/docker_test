package main

import (
	"fmt"
	"time"
)

func hello(dat chan int) {

	time.Sleep(4 * time.Second)
	fmt.Println("In Hello")

	dat <- 2
}

func main() {
	data := make(chan int)
	go hello(data)
	a := <-data

	fmt.Println("main Function......", a)
}
