require_relative 'cookie'
class PeanutButter < Cookie
  def initialize(args={})
    super(args)
    @increment = 4
  end
end