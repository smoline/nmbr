class Game
  def initialize
    @random_num = rand(101) + 1
    @guess_array = []
  end

  def ask_for_number
    print "Guess a number between 1 and 100: "
    answer = gets.chomp.to_i
    answer
  end

  def duplicate_number_test(guess)
    if @guess_array.include?(guess)
      puts "You already used that number, are you even trying?"
    end
  end

  def silly_guess(guess)
    if @guess_array.last < @random_num && guess < @guess_array.last
      puts "Now you are just wasting your guesses"
    elsif @guess_array.last > @random_num && guess > @guess_array.last
      puts "Now you are just wasting your guesses"
    end
  end

  def play
    guess_count = 1
    guess = ask_for_number
    @guess_array << guess

    while guess_count < 5
      if guess < @random_num
        puts "Your guess is lower than my number."
        guess = ask_for_number
        duplicate_number_test(guess)
        silly_guess(guess)
        @guess_array << guess
      elsif guess > @random_num
        puts "Your guess is higher than my number"
        guess = ask_for_number
        duplicate_number_test(guess)
        silly_guess(guess)
        @guess_array << guess
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
