require './Scorer.rb'
require './Question.rb'

class Game

  def play

    scorer = Scorer.new

    counter = 0

    while scorer.print_score[4].to_i > 0 && scorer.print_score[15].to_i > 0 do

      counter += 1
      current_player = "Player 1"

      if counter.odd?
        current_player = "Player 1"
      else
        current_player = "Player 2"
      end

      question = Question.new

      puts "----- NEW TURN -----"
      puts "#{current_player}: #{question.print_question}"
      answer = $stdin.gets.chomp
      correct = question.evaluate(answer)

      if correct
        puts "YES! You are correct."
        scorer.update_lives(correct, current_player)
        puts scorer.print_score
      else
        puts "Seriously? No!"
        scorer.update_lives(correct, current_player)
        puts scorer.print_score
      end
    end

    puts "----- GAME OVER -----"
    puts "Good bye!"

  end

end

game = Game.new
p game.play
