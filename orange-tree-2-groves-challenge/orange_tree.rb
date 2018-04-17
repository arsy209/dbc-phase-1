class OrangeTree < FruitTree

  def initialize(args = {})
    super
    @mature = 6
    @dead= 100
    @fruit_type = "oranges"
    @range = 100..300
    @growth = 2.5
    @max_height = 25
    @fruit_class = Orange
  end

end