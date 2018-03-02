# TIC TAC TOE GAME

## The rules of tic-tac-toe are as follows:

There are two players in the game (X and O)
Players take turns until the game is over
A player can claim a field if it is not already taken
A turn ends when a player claims a field
A player wins if they claim all the fields in a row, column or diagonal
A game is over if a player wins
A game is over when all fields are taken

## How to play from command line (on Mac):
1. Open your terminal and type:
```
git clone git@github.com:AlexandraGF/tic_tac_toe_tech_test.git
```
2. Change the folder by typing:
```
cd tic_tac_toe_tech_test
```
and press enter.
3. Type:
```
bundle
```
to install gem needed form the game to run.
3. If you don't have Ruby, you can run the following commands:

if you don't have Homebrew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
if you don't have Ruby
```
brew install ruby
```
4. After running bundle, type:
```
irb
```
and press enter.
5. Then you need to require 2 files:
```
require './lib/player.rb'
```
```
require './lib/player.rb'
```
6. Create first player:
```
p1 = Player.new("Michael")
```
7. Create second player
```
p2 = Player.new("Helen")
```
8. Create a game
```
game = TicTacToe.new(p1,p2)
```
9. Depending of the player1(that is x) or player2(that is o), you need to type:
```
game.turn('x', 3)
```
or
```
game.turn('o', 6)
```
until the game is over.
```
There are 9 positions in a tic tac toe game and corresponding positions in a game are as follow:
position 1 is 0
position 2 is 1
position 3 is 2
position 4 is 3
position 5 is 4
position 6 is 5
position 7 is 6
position 8 is 7
position 9 is 8

An example:
game.turn('x', 3)
game.turn('o', 2)
3 will go into the position 4 in the grid game.
2 will go into the position 3 in the grid game.
```

```
Grid Game for the above example:
_____________
| 0 | 1 | 2 |
|___|___|_o_|
_____________
| 3 | 4 | 5 |
|_x_|___|___|
_____________
| 6 | 7 | 8 |
|___|___|___|
```
10. Each player takes turns until one of them wins or there are no more fields available.

## Examples from irb playing the game:
```
Example 1:

2.4.1 :002 > require './lib/player.rb'
 => false
2.4.1 :003 > require './lib/tic.rb'
 => true
2.4.1 :004 > p1 = Player.new("Michael")
 => #<Player:0x007fbf1481e3d8 @name="Michael">
2.4.1 :005 > p2 = Player.new("Helen")
 => #<Player:0x007fbf1498b9a0 @name="Helen">
2.4.1 :006 > game = TicTacToe.new(p1,p2)
 => #<TicTacToe:0x007fbf16026e80 @player1=#<Player:0x007fbf1481e3d8 @name="Michael">, @player2=#<Player:0x007fbf1498b9a0 @name="Helen">, @tic_array=["", "", "", "", "", "", "", "", ""], @available_fields=9>
2.4.1 :007 > game.turn('x',0)
 => nil
2.4.1 :009 > game.turn('o',1)
 => nil
2.4.1 :010 > game.turn('x',3)
 => nil
2.4.1 :011 > game.turn('o',5)
 => nil
2.4.1 :012 > game.turn('x',6)
 => "Game over! Michael has won!"
```

```
Example 2:

2.4.1 :013 > p1 = Player.new("Michael")
 => #<Player:0x007fbf1585d4d8 @name="Michael">
2.4.1 :014 > p2 = Player.new("Helen")
 => #<Player:0x007fbf158456f8 @name="Helen">
2.4.1 :015 > game = TicTacToe.new(p1,p2)
 => #<TicTacToe:0x007fbf1580c830 @player1=#<Player:0x007fbf1585d4d8 @name="Michael">, @player2=#<Player:0x007fbf158456f8 @name="Helen">, @tic_array=["", "", "", "", "", "", "", "", ""], @available_fields=9>
2.4.1 :016 >   game.turn('x', 5)
 => nil
2.4.1 :017 >       game.turn('o', 4)
 => nil
2.4.1 :018 >       game.turn('x', 7)
 => nil
2.4.1 :019 >       game.turn('o', 3)
 => nil
2.4.1 :020 >       game.turn('x', 1)
 => nil
2.4.1 :021 >       game.turn('o', 2)
 => nil
2.4.1 :022 >       game.turn('x', 6)
 => nil
2.4.1 :023 >       game.turn('o', 8)
 => nil 
2.4.1 :025 > game.turn('x',0)
 => "Game over! No one won! Not available spaces to play"
 ```
