Bowling Game Kata
============

We will be implementing a small application that will give us a score depending on the type of game we played.

This has been a popular Kata and originally came from http://butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata

Notes:

A bowling game consists of 10 frames in which a player tries to knock down 10 pins. The player has
2 rolls in each frame.  The score of a frame is the number of knocked down pins plus points for strikes
and spares.

Strikes:
A strike is made when a player knocks all 10 pins down on the first roll. The frame ends immediately.
The bonus points for the strike are determined by the number of pins knocked down by the next two rolls.

Spares:
A spare is made when a player knocks all 10 pins down on two rolls.  The bonus points for the strike are
determined by the number of pins knocked down on the first roll of the next frame.

Gutter Game:
When a player never hits any pins.

Perfect Game:
When a player rolls 12 strikes(10 strikes plus bonus strikes). A perfect score is 300.

We will test the following scenarios:

```
  test for a Gutter Game with a score of 0
  test for a Game of all ones with a score of 20
  test for a Game with a strike with a score of 24
  test for a Game with a spare with a score of 16
  test for a Pefect Game with a score of 300
```
