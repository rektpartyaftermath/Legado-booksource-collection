#!/bin/bash
# Get list of all folder
bookSourceList=$(ls ./Booksource)
rm List.md
for i in $bookSourceList
do
	echo "[$i](https://intradeus.github.io/http-protocol-redirector?r=legado://import/bookSource?src=https://raw.githubusercontent.com/rektpartyaftermath/Legado-booksource-collection/main/Booksource/$i/bookSource.json)  " >> List.md
done
# Merge all Booksource
jq '.[0]' ./Booksource/*/*json | jq -s '.' > AllBooksource.json
# Change grouping to English
sed -i 's/"bookSourceGroup.*/"bookSourceGroup": "English",/g' ./Booksource/*/bookSource.json
