#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET_NUMBER=$(( (RANDOM % 1000) + 1 ))

GUESS_COUNT=1
USER_ID=0

MAIN() {
  echo "Enter your username:"
  GET_USER
}

GET_USER() {
  read USERNAME
  USER=$($PSQL "SELECT name FROM users WHERE name = '$USERNAME'")
  
  if [[ -z $USER ]]
  then
    NEW_USER=$($PSQL "INSERT INTO users(name) VALUES ('$USERNAME')")

    # insertion fails because length is more than 22 characters
    if [[ -z $NEW_USER ]]
    then
      GET_USER
    else # insertion successful
      USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME'")
      echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
    fi
  else
    TRIM_USERNAME=$(echo $USER | sed -E 's/^ +$//g')
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USER'")
    NUMBER_OF_GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID")
    LEAST_GUESS_COUNT=$($PSQL "SELECT COALESCE(MIN(num_of_guesses), 0) FROM games WHERE user_id = $USER_ID")
    # echo -e "\nWelcome back, $TRIM_USERNAME! You have played $NUMBER_OF_GAMES_PLAYED games, and your best game took $LEAST_GUESS_COUNT guesses."
    echo -e "\nWelcome back, $TRIM_USERNAME! You have played $NUMBER_OF_GAMES_PLAYED games, and your best game took $LEAST_GUESS_COUNT guesses."
  fi
  PLAY_GAME "\nGuess the secret number between 1 and 1000:"
}

PLAY_GAME() {
  if [[ $1 ]]
  then
    echo -e $1
  fi

  read USER_INPUT

  if [[ ! $USER_INPUT =~ ^[0-9]+$ ]]
  then
    PLAY_GAME "\nThat is not an integer, guess again:"
  fi

  if [[ $USER_INPUT -gt $SECRET_NUMBER ]]
  then
    echo -e "\nIt's lower than that, guess again:"
    (( GUESS_COUNT++ ))
    PLAY_GAME
  elif [[ $USER_INPUT -lt $SECRET_NUMBER ]]
  then
    echo -e "\nIt's higher than that, guess again:"
    (( GUESS_COUNT++ ))
    PLAY_GAME
  else
    echo -e "\nYou guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!\n"
    NEW_GAME_RECORD=$($PSQL "INSERT INTO games (user_id, num_of_guesses) VALUES ($USER_ID, $GUESS_COUNT)")
    exit
  fi
}

# game entry point
MAIN

