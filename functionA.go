package fuca

import (
	"encoding/json"
	"fmt"
	"net/http"

	"github.com/GoogleCloudPlatform/functions-framework-go/functions"
)

func init(){
	functions.HTTP("HelloHTTP", HelloHttp)
}

type Student struct{
	Firstname string `json:"firstname"`
	Lastname  string `json:"lastname"`
}

func HelloHttp(w http.ResponseWriter, r *http.Request){
	fmt.Println("c...")
	_ = json.NewEncoder(w).Encode(&Student{
		Firstname: "KritchatV2",
		Lastname:  "RojanaphrukV2",
	})
}

func getName() string{
	return "r9k"
}
