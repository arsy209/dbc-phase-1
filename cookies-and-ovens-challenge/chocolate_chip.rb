require_relative 'cookie'

class ChocolateChip < Cookie
  def initialize(args={})
    super(args)
    @increment = 2
  end
end