require './player'
require './game'
require './prompt'

player1 = Player.new
player2 = Player.new

math_game = Game.new
game_prompts = Prompt.new

game_prompts.math_question
game_prompts.check_answer
