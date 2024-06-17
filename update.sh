#!/bin/bash
# Get list of all folder
bookSourceList=$(ls ./Booksource)
rm List.md
for i in $bookSourceList
do
	echo "[$i](https://raw.githubusercontent.com/rektpartyaftermath/Legado-booksource-collection/main/$i/bookSource.json)" >> List.md
done
# make a link to each of them but change it to
# https://raw.githubusercontent.com/rektpartyaftermath/Legado-Book-Source-id-eng/main/bookSource.json
# Merge all Booksource
jq '.[0]' ./Booksource/*/*json | jq -s '.' > AllBooksource.json
