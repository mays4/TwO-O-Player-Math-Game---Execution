require "./game"
require './player'
require './question'

player1=Player.new('player1')
player2=Player.new('player2')
game = Game.new(player1,player2)
# player1.turn = true
while player1.alive? && player2.alive?  do 
  question = Question.new
  puts "--- NEW TURN ---"
  puts "#{game.current_player.name}:#{question.question}"
  puts game.current_player == player1
  input = gets.chomp
  
  if input.to_i == (question.answer)
    puts "#{game.current_player.name}: Yes! you are correct" 
  else  
    game.current_player.lives -=1
    puts "#{game.current_player.name}: Seriously? No!"
  end
  game.change_player
  puts "p1: #{player1.lives}/3 vs p2:#{player2.lives}/3"
  if game.over?
    puts "#{game.winner.name} wins"
    puts "--- GameOver---"
    puts "GoodBye"
  end
end


