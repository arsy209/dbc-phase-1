require_relative 'fruit_tree'

class AppleTree < FruitTree

  def initialize(args = {})
    super
    @mature = 5
    @dead = 40
    @fruit_type = "apples"
    @range = 400..600
    @growth = 2
    @max_height = 26
    @fruit_class = Apple
  end

end