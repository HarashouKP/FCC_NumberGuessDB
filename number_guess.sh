#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=numberguessinggames -t --no-align -c"

echo -e "Enter your username:"
read NAME
COUNT=1

NUMBER=$((1 + $RANDOM % 1000))

CHECKNAME=$($PSQL "SELECT username FROM usernames WHERE username='$NAME' ")


#check has been used before
if [[ -z $CHECKNAME ]] ;then

#insert new player in database
  INSERTNEWPLAYER=$($PSQL "INSERT INTO usernames(username,total_game) VALUES ('$NAME',0)")
  GETNEWUSER=$($PSQL "SELECT username FROM usernames WHERE username='$NAME'")
  echo -e "Welcome, $GETNEWUSER! It looks like this is your first time here."
  
else
  #old player
  OLDTOTAL=$($PSQL "SELECT total_game FROM usernames WHERE username='$NAME' ") 
  #get best stats
  GETID1=$($PSQL "SELECT username_id FROM usernames WHERE username='$NAME'")
  BESTSTATOLDPLAYER=$($PSQL "SELECT MIN(total_guesses) FROM gamelogs WHERE username_id='$GETID1'")
  
  echo -e "Welcome back, $CHECKNAME! You have played $OLDTOTAL games, and your best game took $BESTSTATOLDPLAYER guesses."
  #

fi

echo -e "Guess the secret number between 1 and 1000:"

#game function
GAME() {
  
  read NUMBERGUESS
  #COUNT=$(($COUNT + 1))

  
  if [[ ! $NUMBERGUESS =~ ^[0-9]+$ ]] ;then
    echo -e "That is not an integer, guess again:"
    let COUNT=COUNT+1
    GAME
  
  else
    if [[ $NUMBERGUESS == $NUMBER ]] ; then

    #update +1 game
    OLDTOTALGAME=$($PSQL "SELECT total_game FROM usernames WHERE username='$NAME' ")
    #LET NEWTOTALGAME=OLDTOTALGAME+1
    ((OLDTOTALGAME+=1))
    #INESRT INTO DB WHEN FINISHED 
    GETIDUSER=$($PSQL "SELECT username_id FROM usernames WHERE username='$NAME'")
    UPDATERESULT=$($PSQL "UPDATE usernames SET total_game=$OLDTOTALGAME WHERE username='$NAME'")
    INSERTRESULT=$($PSQL "INSERT INTO gamelogs(username_id,total_guesses) VALUES ($GETIDUSER,$COUNT)")

    echo -e "You guessed it in $COUNT tries. The secret number was $NUMBER. Nice job!\n"
    
    else
      if [[ $NUMBERGUESS -gt $NUMBER ]] ; then
        echo -n "It's lower than that, guess again:"
        
        let COUNT=COUNT+1

        GAME
      else
        echo -e "It's higher than that, guess again:"
        let COUNT=COUNT+1

        GAME
      fi

    fi

  fi


}
  
#call GAME function
GAME