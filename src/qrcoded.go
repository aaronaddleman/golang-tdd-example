package main

import (
	"fmt"
	"log"
	"os"

	"github.com/skip2/go-qrcode"
)

func main() {
	fmt.Println("Hello QR Code")

	qrcode, err := GenerateQRCode("555-2368")
	if err != nil {
		log.Fatalf("Error generating QR code: %v", err)
	}

	err = os.WriteFile("qrcode.png", qrcode, 0644)
	if err != nil {
		log.Fatalf("Error writing QR code: %v", err)
	}
}

func GenerateQRCode(code string) ([]byte, error) {
	png, err := qrcode.Encode(code, qrcode.Medium, 256)
	if err != nil {
		return nil, err
	}
	return png, nil
}
