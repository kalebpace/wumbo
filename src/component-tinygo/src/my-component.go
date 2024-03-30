package main

import (
	gen "main/host"
)

func init() {
    a := HostImpl{}
    gen.SetHost(a)
}

type HostImpl struct {
}

func (e HostImpl) Run() {
  gen.HostPrint("Hello, world!")
}

//go:generate wit-bindgen tiny-go ../wit --out-dir=host
func main() {}