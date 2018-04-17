require_relative 'anagram'

def get_word_from_user
  gets.strip
end

first_word = Anagram.new(ARGV[0])
second_word = Anagram.new(ARGV[1])

# Display result.
if first_word.anagram_of?(second_word)
  puts "\nYes, '#{first_word.word}' and '#{second_word.word}' are anagrams.\n"
else
  puts "\nNo, '#{first_word.word}' and '#{second_word.word}' are not anagrams.\n"
end