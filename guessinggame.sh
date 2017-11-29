#! /usr/bin/env bash
# Filename: Guessinggame 

# Final version 

numfiles=$(ls -l | grep ^- | wc -l)

function guessnum {
echo "Guess the # of files in the current directory"
read guess
}
guessnum

while [[ $guess != $numfiles ]]
do
  if [[ $guess -gt $numfiles ]]
    then
     echo "Your guess is too high"
     guessnum
  elif [[ $guess -lt $numfiles ]]
    then
     echo "Your guess is too low"
     guessnum
  fi
done


if [[ $guess -eq $numfiles ]] 
then
echo "Congrats, your guess is correct"
echo
echo
fi
