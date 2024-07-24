package main

import (
	"fmt"
	"log"

	_ "github.com/rkritchat/func-a"
	"github.com/GoogleCloudPlatform/functions-framework-go/funcframework"
)

func main(){
	fmt.Println("test")
	port := "8080"
	err := funcframework.Start(port)
	if err!=nil{
		log.Fatalf("functions-framework", err)
	}
}
