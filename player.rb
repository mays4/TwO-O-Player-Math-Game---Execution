class Player 
  attr_reader :name
  attr_accessor :lives
  # attr_writer :turn
  def initialize(name)
    @name = name
    @lives = 3
    # @turn = false
  end

  def alive?
    lives > 0 
  end
  # def turn?
  #   @turn 
  # end
  
end 