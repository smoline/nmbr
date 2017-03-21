class Game
  def initialize
    @random_num = rand(101) + 1
    # @random_num = 25
  end

  def ask_for_number
    print "Guess a number between 1 and 100: "
    answer = gets.chomp.to_i
    return answer
  end

  def duplicate_number_test(g_array)
    i = 0
    while i < (g_array.length - 1)
      if g_array.last == g_array[i]
        puts "You already used that number, are you even trying?"
        break
      else
        i += 1
      end
    end
  end

  def play

    guess_count = 1
    guess = ask_for_number
    guess_array = []
    guess_array << guess

    while guess_count < 5
      if guess < @random_num
        puts "Your guess is lower than my number."
        guess = ask_for_number
        guess_array << guess
        duplicate_number_test(guess_array)
      elsif guess > @random_num
        puts "Your guess is higher than my number"
        guess = ask_for_number
        guess_array << guess
        duplicate_number_test(guess_array)
      else
        break
      end
      guess_count += 1
    end
    if guess == @random_num
      puts "You win!"
    else
      puts "You lose!"
    end
  end
end

Game.new.play
