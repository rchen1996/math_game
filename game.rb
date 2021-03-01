class Game
  attr_accessor :current_player, :game_state

  def initialize
    @current_player = 1
    @game_state = true
  end

  def start_game(p1, p2, prompts)
    game_prompts = prompts
    player1 = p1
    player2 = p2

    while @game_state
      game_prompts.math_question(current_player)
      answer = game_prompts.check_answer

      if answer
        if current_player == 1
          self.current_player = 2
        else
          self.current_player = 1
        end
      else
        if current_player == 1
          player1.lives -= 1
          self.current_player = 2
        else
          player2.lives -= 1
          self.current_player = 1
        end
      end

      if player1.lives == 0 || player2.lives == 0
        if current_player == 2
          puts "Player 2 wins with a score of #{player2.lives}/3"
        else
          puts "Player 1 wins with a score of #{player1.lives}/3"
        end
        self.game_state = false
        puts '----- GAME OVER -----'
        puts 'Good bye!'
      else
        puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
        puts '----- NEW TURN -----'
      end
    end
  end
end
