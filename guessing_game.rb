def ask_for_number
  print "Guess a number between 1 and 100: "
  answer = gets.chomp.to_i
  return answer
end

def guessing
  guess_count = 1
  guess = ask_for_number
  random_num = rand(101) + 1

  while guess_count < 5
    if guess < random_num
      puts "Your guess is lower than my number."
      guess = ask_for_number
    elsif guess > random_num
      puts "Your guess is higher than my number"
      guess = ask_for_number
    else
      break
    end
    guess_count += 1
  end
  if guess == random_num
    puts "You win!"
  else
    puts "You lose!"
  end
end

guessing
