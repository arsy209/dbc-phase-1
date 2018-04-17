class Employee
  attr_accessor :position,:name
  attr_reader :id

  def initialize(name,position,id)
    @name     = name
    @position = position
    @id       = id
  end
end
