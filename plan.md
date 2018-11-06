class Question
- outputs a math question at the beginning of each turn
- needs two random numbers between 1 and 20
- needs a random operator, maybe one day??
- needs to know whose turn it is
- `def random_number`
- `def print_question`
- `def evaluate`

class Scorer
- keeps track of lives and outputs the score after each turn and ends the game when one player's lives are all gone
- needs to know if the answer was right/wrong
- `print_score`
- `game_over?`

class Game
- runs the game logic (each instance of the loop is the other player's turn)
    - keeps track of whose turn it is
    - takes user input 
- `def play`

** play_game.rb

game = Game.new (????)
game.play


