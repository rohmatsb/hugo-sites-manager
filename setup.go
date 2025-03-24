package main
import "fmt"

func archtype() {

    // Print pesan untuk memilih arsitektur
    fmt.Println("Masukkan arsitektur :")
    fmt.Println("Contoh 'amd64' atau 'arm64'")

    // Mendefinisikan variabel dan scan value arch
    var arch string
    fmt.Scanln(&arch)

    if arch == "amd64" {
    fmt.Println("Arsitektur kamu amd64")
    } else if arch == "arm64" {
    fmt.Println("Arsitektur kamu arm64")
    } else {
    fmt.Println("Format salah, masukkan sesuai contoh!")
    }
}

func main() {
    archtype()
}