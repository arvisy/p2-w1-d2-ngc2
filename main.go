package main

import (
	"context"
	"encoding/json"
	"log"
	"net/http"
	"ngc2/config"
)

type Heroes struct {
	ID       int
	Name     string
	Universe string
	Skill    string
	ImageURL string
}

type Villain struct {
	ID       int
	Name     string
	Universe string
	ImageURL string
}

func main() {
	db, err := config.GetDB()
	if err != nil {
		log.Fatal("Failed to connect")
	}
	defer db.Close()

	mux := http.NewServeMux()
	mux.HandleFunc("/heroes", func(w http.ResponseWriter, r *http.Request) {
		ctx := context.Background()
		var heroes []Heroes

		query := `SELECT ID, Name, Universe, Skill, ImageURL FROM heroes`

		rows, err := db.QueryContext(ctx, query)
		if err != nil {
			panic(err)
		}
		defer rows.Close()

		for rows.Next() {
			h := Heroes{}
			err := rows.Scan(&h.ID, &h.Name, &h.Universe, &h.Skill, &h.ImageURL)
			if err != nil {
				panic(err)
			}
			heroes = append(heroes, h)
		}

		w.Header().Set("Content-Type", "application/json")
		json.NewEncoder(w).Encode(heroes)
	})

	mux.HandleFunc("/villain", func(w http.ResponseWriter, r *http.Request) {
		ctx := context.Background()
		var villain []Villain

		query := `SELECT ID, Name, Universe, ImageURL FROM villain`

		rows, err := db.QueryContext(ctx, query)
		if err != nil {
			panic(err)
		}
		defer rows.Close()

		for rows.Next() {
			v := Villain{}
			err := rows.Scan(&v.ID, &v.Name, &v.Universe, &v.ImageURL)
			if err != nil {
				panic(err)
			}
			villain = append(villain, v)
		}

		w.Header().Set("Content-Type", "application/json")
		json.NewEncoder(w).Encode(villain)
	})

	server := http.Server{
		Addr:    "localhost:8081",
		Handler: mux,
	}

	err = server.ListenAndServe()
	if err != nil {
		log.Fatal(err)
	}

}
