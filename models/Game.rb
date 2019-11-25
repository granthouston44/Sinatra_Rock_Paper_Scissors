require('pry')

class Game


  def self.play(player1, player2)
    case
    when player1 == player2
      "draw!"
    when player1 == 'scissors' && player2 == 'paper'
      "You win!!"
    when player1 == 'scissors' && player2 == 'rock'
      "You lose!!"
    when player1 == 'paper' && player2 == 'rock'
      "You win!!"
    when player1 == 'paper' && player2 == 'scissors'
      "You lose!!"
    when player1 == 'rock' && player2 == 'paper'
      "You lose!!"
    when player1 == 'rock' && player2 == 'scissors'
      "You win!!"
    end
  end

  def self.computer_player
    computer_move = ['rock', 'paper', 'scissors']
    sampled_move = computer_move.sample
    p sampled_move
  end




end
