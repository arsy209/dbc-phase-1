require_relative 'tree_grove'
require_relative 'apple_tree'
require_relative 'apple'
require_relative 'orange_tree'
require_relative 'orange'
require_relative 'pear_tree'
require_relative 'pear'
require_relative 'fruit_tree'



grove = TreeGrover.new

grove.add_orange_tree(35, 5)
grove.add_orange_tree(40, 20)

grove.add_apple_tree(15,13)
grove.add_apple_tree(15, 5)

grove.add_pear_tree(15)
grove.add_pear_tree(15, 30)

data = 1

2.times do

  grove.pass_a_grove_growing_season

  orange_trees = grove.view_trees_with_certain_fruit('oranges')
  mature_oranges = orange_trees.select { |tree| tree.mature? }.length
  unmature_oranges = orange_trees.reject { |tree| tree.mature? }.length
  dead_oranges = orange_trees.select { |tree| tree.dead? }.length

  apple_trees = grove.view_trees_with_certain_fruit('apples')
  mature_apples = apple_trees.select { |tree| tree.mature? }.length
  unmature_apples = apple_trees.reject { |tree| tree.mature? }.length
  dead_apples = apple_trees.select { |tree| tree.dead? }.length

  pear_trees = grove.view_trees_with_certain_fruit('pears')
  mature_pears = pear_trees.select { |tree| tree.mature? }.length
  unmature_pears = pear_trees.reject { |tree| tree.mature? }.length
  dead_pears = pear_trees.select { |tree| tree.dead? }.length


  puts <<-MODEL_REPORT.gsub(/^ {4}/, '')
    Arsh's Fruit Farm Data #{data}:
    |Orange Trees: #{orange_trees.length} not_ready: #{unmature_oranges}, mature: #{mature_oranges}, dead: #{dead_oranges}|
    |Apple Trees: #{apple_trees.length} not_ready: #{unmature_apples}, mature: #{mature_apples}, dead: #{dead_apples}|
    |Pear Trees: #{pear_trees.length} not_ready: #{unmature_pears}, mature: #{mature_pears}, dead: #{dead_pears}|
  
  MODEL_REPORT

  data += 1

end
