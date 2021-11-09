

# require './game'
class Question
    attr_accessor :question ,:answer
    def initialize
        @x = Random.rand(1..20)
        @y = Random.rand(1..20)
        @answer = @x + @y
        @question ="What does #{@x} plus #{@y}"
   end
end

question  = Question.new
puts question.answer