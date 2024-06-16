#!/bin/bash
jq '.[0]' ./Booksource/*/*json | jq -s '.' > AllBooksource.json
