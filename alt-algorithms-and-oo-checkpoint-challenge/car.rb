class Car

  attr_reader :inventory_id, :make, :model, :year

  def initialize(args = {})
    @inventory_id = args.fetch(:inventory_id,"").to_i
    @make = args.fetch(:make,"")
    @model = args.fetch(:model,"")
    @year = args.fetch(:year,"").to_i
  end
end