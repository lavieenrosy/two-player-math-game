class Scorer

  def initialize(right = true, player1_turn = true)
    @player1 = 3
    @player2 = 3
    @right = right
    @player1_turn = player1_turn
  end

  # def player1_life_count(correct, player1_turn)
  #   if player1_turn
  #     if correct
  #       nil
  #     else
  #       @player1 -= 1
  #     end
  #   else
  #     nil
  #   end
  # end

  # def player2_life_count(correct, player1_turn)
  #   if player1_turn
  #     nil
  #   else
  #     if correct
  #       nil
  #     else
  #       @player2 -= 1
  #     end
  #   end
  # end

  def update_lives(correct, player)

    case player
    when "Player 1"
      if !correct
        @player1 -= 1
      end
    when "Player 2"
      if !correct
        @player2 -= 1
      end
    end

  end

  def print_score
    "P1: #{@player1}/3 vs P2: #{@player2}/3"
  end

end

# sco = Scorer.new(false, true)
# p sco.get_score(true, "Player 1")