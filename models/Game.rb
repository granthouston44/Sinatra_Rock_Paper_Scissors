require('pry')

class Game


  def self.play(player1, player2)
    case
    when player1 == player2
      "draw!"
    when player1 == 'scissors' && player2 == 'paper'
      "Player1 wins!"
    when player1 == 'scissors' && player2 == 'rock'
      "Player2 wins!"
    when player1 == 'paper' && player2 == 'rock'
      "Player1 wins!"
    when player1 == 'paper' && player2 == 'scissors'
      "Player2 wins!"
    when player1 == 'rock' && player2 == 'paper'
      "Player2 wins!"
    when player1 == 'rock' && player2 == 'scissors'
      "Player1 wins!"
    end






  end








end
