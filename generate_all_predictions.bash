#! /bin/bash
FUNCTION=./movie_recommender
DF=data/*

mv query/daves_preferences.txt data
cd data

for file in *
do
	cd ..
	mv data/${file} query
	${FUNCTION} query/${file} ${DF}
	mv query/${file} data
	cd data
done
	 
