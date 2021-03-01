require './player'
require './game'
require './prompt'

math_game = Game.new
game_prompts = Prompt.new
player1 = Player.new
player2 = Player.new

math_game.start_game(player1, player2, game_prompts)
