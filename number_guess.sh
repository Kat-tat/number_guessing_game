#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo Enter your username:
read USERNAME
USER=$($PSQL "SELECT username FROM games WHERE username = '$USERNAME'")
if [[ -z $USER ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE username = '$USERNAME'")
  echo "Welcome back, $USER! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
GUESSES=0
NUMBER=$(( $RANDOM % 1000 + 1 ))
echo "Guess the secret number between 1 and 1000:"
read GUESS
until [[ $GUESS == $NUMBER ]]
do
  if ! [[ "$GUESS" =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    GUESSES=$((GUESSES+1))
    read GUESS
  else
    if [[ "$GUESS" > "$NUMBER" ]]
    then
      echo "It's lower than that, guess again:"
      GUESSES=$((GUESSES+1))
      read GUESS  
    else 
      echo "It's higher than that, guess again:"
      GUESSES=$((GUESSES+1))
      read GUESS
    fi
  fi
done

GUESSES=$((GUESSES+1))
echo "You guessed it in $GUESSES tries. The secret number was $NUMBER. Nice job!"
NEW_SCORE=$($PSQL "INSERT INTO games(username, guesses) VALUES('$USERNAME', $GUESSES)")
