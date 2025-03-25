package main
import "fmt"

func welcome() {
  // Print pesan welcome
  fmt.Println("=================")
  fmt.Println("Hugo Blog Manager")
  fmt.Println("=================")
  fmt.Println("")
  fmt.Println("Welcome to easier hugo blog management. Worry less, and focus on your writing.")

  // Confirmation
  fmt.Print("Press 'enter' to continue...")
  var tekan_enter string
  fmt.Scanln(&tekan_enter)
}

func main() {
  welcome()
}