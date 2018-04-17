class TreeGrover

  attr_reader :trees

  def initialize(args = {})
    @trees = []
    @num_of_apple_trees = args.fetch(:num_of_apple_trees, 0)
    @num_of_pear_trees = args.fetch(:num_of_pear_trees, 0)
    @num_of_orange_trees = args.fetch(:num_of_orange_trees, 0)
  end

  def view_all_trees
    trees.each { |tree| tree }
  end

  def add_apple_tree(num=1, age=0)
    num.times { trees << make_apple_tree(age) }
  end

  def make_apple_tree(age)
    AppleTree.new(:age => age)
  end

  def add_orange_tree(num=1, age=0)
    num.times { trees << OrangeTree.new(:age => age) }
  end

  def make_orange_tree(age)
    OrangeTree.new(:age => age)
  end

  def add_pear_tree(num=1, age=0)
    num.times { trees << make_pear_tree(age) }
  end

  def make_pear_tree(age)
    PearTree.new(:age => age)
  end

  def view_trees_with_certain_fruit(fruit)
    trees.select { |tree| tree.fruit_type == fruit}
  end

  def view_mature_trees
    trees.select { |tree| tree.age >= tree.maturing_age}.length
  end

  def view_dead_trees
    trees.select { |tree| tree.dead?}.length
  end

  def pass_a_grove_growing_season
    trees.map { |tree| tree.pass_growing_season }
  end

end