require_relative '../word_search'



puzzle_grid= [
   ["a", "k", "f", "o", "x", "e", "s"],
   ["s", "o", "a", "w", "a", "h", "p"],
   ["i", "t", "c", "k", "e", "t", "n"],
   ["o", "t", "s", "d", "h", "o", "h"],
   ["s", "e", "x", "g", "s", "t", "a"],
   ["u", "r", "p", "i", "w", "e", "u"],
   ["z", "s", "b", "n", "u", "i", "r"]
 ]
describe 'straight_line_include?' do
	it 'found the word horizontally' do
		expect(straight_line_include?("kfo",puzzle_grid)).to eq true
    end
    it 'found the word diagnally' do
		expect(straight_line_include?("she",puzzle_grid)).to eq true
    end
    it 'return false cause snake method does not exist' do
		expect(straight_line_include?("soek",puzzle_grid)).to eq false
    end
    it 'finds word backwards vertically' do
		expect(straight_line_include?("zus",puzzle_grid)).to eq true
    end
     it 'finds word backwards horizontally' do
		expect(straight_line_include?("haw",puzzle_grid)).to eq true
     end
end


describe 'snaking_include?' do
end
