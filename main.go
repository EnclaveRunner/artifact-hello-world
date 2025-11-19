package main

import (
	"github.com/extism/go-pdk"
)

//go:export helloWorld
func HelloWorld() int32 {
	pdk.OutputString("Hello, World!")
	return 0
}

//go:export respond
func Respond() int32 {
	pdk.Output(pdk.Input())
	return 0
}
