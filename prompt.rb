class Prompt
  def math_question
    @numb1 = generate_number
    @numb2 = generate_number
    @answer = @numb1 + @numb2
    puts "What does #{@numb1} plus #{@numb2} equal?"
  end

  def check_answer
    player_answer = gets.chomp.to_i
    if player_answer == @answer
      puts 'YES! You are correct'
    else
      puts 'Seriously? No!'
    end
  end

  private

  def generate_number
    rand(1..20)
  end
end
