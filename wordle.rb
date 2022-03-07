# ------ HOW TO TAKE ONE LETTER INPUT AT A TIME ------ #
# require 'io/console'
# print "Guess a five letter word here!: "
# input = [STDIN.getch, STDIN.getch, STDIN.getch, STDIN.getch, STDIN.getch].join("")

solution = "ROBOT"
solved = false

# ------ Compare Wordle Guess Against Solution ------ #

def compare_guess(input, solution)
  squares =  []
  index = 0
  while index < input.length
    if input[index] == solution[index]
      square = "G"
    elsif solution.include?(input[index])
      square = "Y"
    else 
      square = "N" # n for null
    end
    index += 1
    squares << square
  end
  puts squares.join("")
end

# ------ Runs Loop To Check All Guesses ------ #

6.times do
  print "Guess a five letter word here!: "
  input = gets.chomp.upcase
  if input == solution
    solved = true
    break
  else
    compare_guess(input, solution)
    puts "Incorrect Guess!"
  end
end

# ------ Determines If You Won ------ #

if solved == true
  puts "Congratulations! You Won Knockoff Wordle!"
else
  puts "You Lost. The Answer Was: #{solution}."
end