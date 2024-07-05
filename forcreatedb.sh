#!/bin/bash

#CREATE DATABASE numberguessinggames
#dbname numberguessinggames

PSQL="psql --username=freecodecamp --dbname=numberguessinggames -t --no-align -c"

#Create Database 
#$($PSQL "CREATE DATABASE numberguessinggames")

#Create table
$($PSQL "CREATE TABLE usernames( username_id SERIAL PRIMARY KEY NOT NULL , username VARCHAR(22) UNIQUE NOT NULL , total_game INT DEFAULT 0)")
$($PSQL "CREATE TABLE gamelogs( game_id SERIAL PRIMARY KEY NOT NULL , username_id INT ,total_guesses INT DEFAULT 0 )")

#ALTER TABLE gamelogs ADD CONSTRAINT FK_username FOREIGN KEY (username) REFERENCES usernames(username)
$($PSQL "ALTER TABLE gamelogs ADD CONSTRAINT FK_username_id FOREIGN KEY (username_id) REFERENCES usernames(username_id)")

