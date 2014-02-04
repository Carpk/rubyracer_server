
Ruby Racer
==========

Ruby Racer is an excercise in ajax and json, your stats are stored in a database with your initials.

Two people get on a computer and visit the application
The application prompts each player to enter their name
The players fill out the form and this creates a new game
The new game starts, and each player smashes their respective key until one of them wins
After one of them wins, the winning player and amount of time it took to win is sent to the server and the game is recorded as being "done"
The players can choose to start another game using their same initials, or restart using different initials
After a game is finished the players are given a unique URL at which they can view the results of that particular game





Getting Started
===============

$ bundle

$ rake db:create

$ rake db:migrate

$ shotgun

open browser and enjoy :)

