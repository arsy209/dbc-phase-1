class Pear
  attr_reader :diameter

  def initialize
    @diameter = random_diameter
  end

  private
  def random_diameter
    [2.2, 2.3, 2.4, 2.6, 2.7, 2.75, 2.8, 2.9, 3.0, 3.1].sample
  end
end