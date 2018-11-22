# Get My Number Game!
# Written by Kirsten Stenquist

# Prompt the player to enter their name. Use their name to print a greeting.
puts "Welcome to get my Number!"
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name.capitalize}!"
#puts "Welcome, #{input.chomp.capitalize}!"

# Generate a random number from 1 to 100, and store it as a target number for the player to guess.
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
puts "You have a balance of $10. You lose $1 for each wrong guess and earn $10 if you guess correctly."
target = rand(100) + 1

# Keep track of how many guesses the player has made. Before each guess, let them know how many guesses (out of 10) they have left.
num_guesses = 0

def add_money(money)
  money + 10
end

def take_money(money)
  money - 1
end

# Track whether the player has guessed correctly.
# remaining_guesses = 10 - num_guesses
# puts remaining_guesses.to_s + " guesses left."
# Prompt the player to make a guess as to what the target number is.
# If the player's guess is less than the target number say, "Oops! Your guess was low." If the player's guess is greater than the target number say, "Oops! Your guess was high."
# Compare the guess to the target.
# Print the appropriate message.
# Keep allowing the player to guess until they get it right or run out of turns.
guessed_it = false
money = 10
while num_guesses < 10 && guessed_it == false
# until num_guesses == 10 || guessed_it
  puts "You've got #{10 - num_guesses} guesses left."
  print "Make a guess: "
  guess = gets.to_i
num_guesses += 1
  if guess < target
    puts "Oops! Your guess was low."
    puts "Balance $ #{money}"
    money = take_money(money)
  elsif guess > target
    puts "Oops! Your guess was high."
    puts "Balance $ #{money}"
    money = take_money(money)
  elsif guess == target
    puts "Good job, #{name.capitalize}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    puts "Balance $ #{money}"
    guessed_it = true
    money = add_money(money)
  end
end



# If player ran out of turns, tell them what the number was.
#if not guessed_it
unless guessed_it
  puts "Sorry. You didn't get my number. (It was #{target}.)"
  puts "Balance $ #{money}"
end




