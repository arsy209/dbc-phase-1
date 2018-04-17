
require_relative 'fruit_tree'

class PearTree < FruitTree

  def initialize(args = {})
    super
    @mature = 5
    @dead = 40
    @fruit_type = "pears"
    @range = 175..225
    @growth = 2.5
    @max_height = 20
    @fruit_class = Pear
  end

end