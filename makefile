all: README.md 

README.md : 
	touch README.md

README.md : makefile
	echo "# Guessing Game" > README.md
	echo "The date make was run is: " >> README.md
	date >> README.md
	echo "The number of lines in guessinggame.sh is: " >> README.md
	cat 'guessinggame.sh' | grep '[^ ]' | wc -l >> README.md
