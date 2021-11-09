require './player'

class Game
  attr_accessor :player1, :player2, :winner, :current_player
  def initialize(player1,player2)
    @player1 = player1
    @player2=player2
    @winner = nil
    @current_player = @player1

  end

  def change_player
    if current_player == player1
      self.current_player = player2
    # if player1.turn?
    #   player1.turn = false
    #   player2.turn = true
    # else
    #   player2.turn = false
    #   player1.turn = true
    # end
    else 
      self.current_player = player1
    end
  end
  # def current_player 
  #   if player1.turn?
  #     player1
  #   else 
  #     player2
  #   end
  # end
  def over?
    over = false
    if !player1.alive?
      self.winner = player2
      over = true
    elsif !player2.alive?
      self.winner = player1
      over = true
    end
    over
  end

end 
 

