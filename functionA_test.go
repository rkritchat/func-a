package fuca

import (
	"testing"

	"github.com/stretchr/testify/assert"
)


func Test_getName(t *testing.T){
	tt := []struct{
		name string
		expectedR string
	}{
		{
			name: "should return valid name",
			expectedR: "r9k2",
		},
	}

	for _, tc := range tt{
		t.Run(tc.name,  func(t *testing.T){
			r := getName()
			assert.Equal(t, tc.expectedR, r)
		})
	}

}
