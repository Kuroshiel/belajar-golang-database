package belajargolangdatabase

import (
	"database/sql"
	"testing"

	_ "github.com/go-sql-driver/mysql"
)

func TestEmpty(t *testing.T) {

}

// Membuka Koneksi ke Database

func TestOpenConnection(t *testing.T) {
	db, err := sql.Open("mysql", "root:Kuroshiel123A!@tcp(localhost:3306)/belajar_golang_database")
	if err != nil {
		panic(err)
	}

	defer db.Close()

	// gunakan DB

}