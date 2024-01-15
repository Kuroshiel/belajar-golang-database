package belajargolangdatabase

import (
	"database/sql"
	"time"
)

// Database Pooling

func GetConnection() *sql.DB {
	db, err := sql.Open("mysql", "root:Kuroshiel123A!@tcp(localhost:3306)/belajar_golang_database")
	if err != nil {
		panic(err)
	}

	db.SetMaxIdleConns(10)
	db.SetMaxOpenConns(100)
	db.SetConnMaxIdleTime(5 * time.Minute)
	db.SetConnMaxIdleTime(60 * time.Minute)

	return db
}

// Tipe Data Column

func GetConnectionParseTime() *sql.DB {
	db, err := sql.Open("mysql", "root:Kuroshiel123A!@tcp(localhost:3306)/belajar_golang_database?parseTime=true")
	//Tambahkan parseTime=true , sesudah belajar_golang_database
	if err != nil {
		panic(err)
	}

	db.SetMaxIdleConns(10)
	db.SetMaxOpenConns(100)
	db.SetConnMaxIdleTime(5 * time.Minute)
	db.SetConnMaxIdleTime(60 * time.Minute)

	return db
}
