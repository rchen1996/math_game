class Prompt
  def math_question(player)
    @numb1 = generate_number
    @numb2 = generate_number
    @answer = @numb1 + @numb2
    puts "Player #{player}: What does #{@numb1} plus #{@numb2} equal?"
  end

  def check_answer
    player_answer = gets.chomp.to_i
    if player_answer == @answer
      puts 'YES! You are correct'
      return true
    else
      puts 'Seriously? No!'
      return false
    end
  end

  private

  def generate_number
    rand(1..20)
  end
end
