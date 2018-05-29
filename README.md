# command-line-mastermind
Mastermind is a code-breaking game. The codebreaker must try to guess the pattern, in both order and color, within twelve turns. In this Ruby program, each guess is made by typing four colors in a row on the command prompt or terminal. Feedback is provided upon each turn through the use of white and black pegs. For more information, https://en.wikipedia.org/wiki/Battleship_(game).

## Getting Started
These instructions will help you get a copy of the game up and running on your computer. 

### Prerequisites
To work with ruby programs you will need to install <a href="https://www.ruby-lang.org/en/documentation/installation/">Ruby</a>. 

### Installing
1. On Github, click on the <b>Clone or Download</b> button and copy the URL.
2. Open your terminal or command prompt, and change your current working directory to the location you want the project to reside in.
3. Type git clone, paste the URL, and hit Enter :
```
$ git clone https://github.com/tfb34/Mastermind.git
```

4. You should now have a copy of the game on your computer.
5. To start the game type ruby mastermind.rb and hit enter :
```
$ ruby mastermind.rb
```

## Game Instructions

Objective:
The player has at most 12 chances to guess a secret combination of 4 colors generated by the computer.


HOW TO PLAY
  To create your guess you may select any of the following colors:
         blue,green,red, orange,yellow, purple

  Duplicates are allowed. 
  Each time you submit a guess, the machine will tell you how close that guess 
  is by returning a black and white score.
  
  A black score of 2 indicates that two of the values in your guess are
  the correct color in the right position.
  A white score of 1 indicates that one of the values in your guess
  is the correct color in the wrong position.

  Use these scores to guide your next guess. If your guess returns a black
  score of 4 within 12 tries, you win!
  

   
