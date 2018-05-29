require "./player"
require "./ai"
def mastermind
  #Give player instructions
  #Ask for name
  #Ask for guess ....
          #make lowercase
          #check length
          #check if subset of ai colors
  #Give feedback
  #repeat until turns are up!
  setup
  computer=AI.new
  player1=Player.new
  n=1

  while n<=12 && computer.blackPegs<4
  puts "Enter 4 colors and then hit Enter: "
  while true
  player1.guess=gets.chomp.split()
   if computer.validInput?(player1.guess)
   		break
   end
   puts "Not valid. Try again! "
  end
  computer.feedback(player1.guess)
     n+=1
  end
  if n>12
  	 puts "You lost!"
  else
  	 puts "You won!"
  end
end


def howToPlay
  puts "HOW TO PLAY___This is a guessing game. Enter 4 colors then press Enter.
  Each time you submit a guess, the machine will tell you how close that guess 
  is by returning a black and white score.
  
  A black score of 2 indicates that 2 of the values in your guess are
  the correct color in the right position.
  A white score of 1 indicates that 1 of the values in your guess
  is the correct color in the wrong position.

  Use these scores to guide your next guess. If your guess returns a black
  score of 4 within 12 tries, you win!"
  puts "///////////////////BEGIN GAME///////////////////"
end

def setup
  puts "The computer has generated a secret combination 
  of 4 colors and your mission is to guess that 
  combination in 12 or fewer tries to win.
  
  Enter 1 to start game 
  Enter 2 for game rules"
  i=gets.chomp.to_i
  while(i!=1 && i!=2)
      puts "Please enter 1 or 2."
      i=gets.chomp.to_i
  end
  puts "*************************************"
  puts "blue green purple orange red yellow"
  puts "*************************************"
  
  howToPlay if i==2
end
mastermind()