

puzzle_grid = [
	   ["a", "k", "f", "o", "x", "e", "s"],
	   ["s", "o", "a", "w", "a", "h", "p"],
	   ["i", "t", "c", "k", "e", "t", "n"],
	   ["o", "t", "s", "d", "h", "o", "h"],
	   ["s", "e", "x", "g", "s", "t", "a"],
	   ["u", "r", "p", "i", "w", "e", "u"],
	   ["z", "s", "b", "n", "u", "i", "r"]
	 ]

def straight_line_include?(word, puzzle_grid)
	 word_arr = []
	 word_arr = each_row(puzzle_grid) + each_column(puzzle_grid) + diagonal_line(puzzle_grid)
	 word_arr.any? {|letter| letter.include?(word) || letter.include?(word.reverse)} 
end
 
def each_column(puzzle_grid)
    puzzle_grid.transpose.map {|column| column.join}
end
 
def each_row(puzzle_grid)
    puzzle_grid.map {|row| row.join}
end

def diagonal_line(puzzle_grid)
  puzzle_grid.map.with_index {|row, word_index| row.push(' ').rotate(word_index) || row.push(' ').rotate(-word_index)}.transpose.map {|row| row.join.split(' ')}.flatten
end


# def snake_line_include?
# end

# p straight_line_include?("aoc",puzzle_grid)
