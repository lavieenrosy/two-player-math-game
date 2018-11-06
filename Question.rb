class Question

  def initialize
    @num1 = random_number
    @num2 = random_number
  end

  def random_number
    1 + rand(20)
  end

  def print_question
    "What does #{@num1} plus #{@num2} equal?"
  end

  def evaluate(answer)
    correct_answer = @num1 + @num2
    answer.to_i == correct_answer.to_i
  end

end