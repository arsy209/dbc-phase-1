require_relative 'word_search'

puzzle_grid =[
  ["a", "k", "f", "o", "x", "e", "s"],
  ["s", "o", "a", "w", "a", "h", "p"],
  ["i", "t", "c", "k", "e", "t", "n"],
  ["o", "t", "s", "d", "h", "o", "h"],
  ["s", "e", "x", "g", "s", "t", "a"],
  ["u", "r", "p", "i", "w", "e", "u"],
  ["z", "s", "b", "n", "u", "i", "r"]
 ]
 
 puts "THE MAGICAL WORD SOLVER DOES EVERYTHING BUT SNAKE METHODS!"
 
 puzzle_grid.map {|row| puts row.join("  ")}
 
 user_input = ""
 until user_input == "done"
   puts "Please enter a word that you see in the puzzle grid above: \n If you do not want to continue, you can type done."
  		 user_input = gets.chomp
 
   break if user_input == "done"
   if straight_line_include?(user_input, puzzle_grid)
    puts "Good eyes,#{user_input} is included in the puzzle!"
   else
     puts "You may need to look more carefully!!"
  end
end
