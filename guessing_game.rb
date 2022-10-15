#!/usr/bin/env ruby

# Number guessing game that allows players three chances
# to guess the correct number

print "What is your name? "
name = gets.chomp
puts "Hello, #{name}. Welcome to the number guessing game."
puts "The game is simple. You will have three tries to guess"
puts "a number from 1 through 25 that we have picked. Enjoy!"

correct_number = rand(25)+1

GUESSES_ALLOWED = 3

1.upto(GUESSES_ALLOWED) do |guess|
    print "Guess #{guess}: "
    choice = gets.chomp
    if choice.to_i == correct_number
        puts "Congratulations, your #{correct_number} is correct!"
        puts "Thanks for playing our game. Good bye."
        break
    else puts "Incorrect. #{choice} is not our number."
        if guess == GUESSES_ALLOWED
            puts "You have reached #{GUESSES_ALLOWED} guesses."
            puts "The correct number is #{correct_number}."
            puts "You can play the game again."
            puts "Thanks for playing our game. Good bye."
            break
        end
    end
end
