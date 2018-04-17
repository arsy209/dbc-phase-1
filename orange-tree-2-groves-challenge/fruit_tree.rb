class FruitTree

  attr_accessor :age, :fruit
  attr_reader :height, :mature, :dead, :fruit_type, :range, :growth, :max_height

  def initialize(args = {})
    @age = args.fetch(:age, 0)
    @height = args.fetch(:height, 0)
    @mature = args.fetch(:mature, 5)
    @dead = args.fetch(:dead, 40)
    @fruit = []
  end

  class NoFruitError < StandardError
  end

  def dead?
    return true if age >= dead
  end

  def mature?
    return true if age >= mature
  end

  def pass_growing_season
    if mature?
      rand(range).times do
        fruit = @fruit_class.new
        @fruit << fruit
      end
    end
    @age += 1
    @height += growth
    @height = max_height if height >= max_height
  end

  def has_fruit?
    return true if fruit.length > 0
    false
  end

  def pick_a_fruit
    raise NoFruitError, "This tree has no #{fruit_type}" unless self.has_fruit?
    @fruit.pop
  end

end