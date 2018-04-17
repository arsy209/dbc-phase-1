class Dealership

  attr_accessor :cars

  def initialize(cars = [])
    @cars = cars
  end

  def find_make(make)
    self.cars.find_all { |car| car.make == make }
  end

  def find_pre(year)
    self.cars.find_all { |car| car.year.to_i < year.to_i }
  end

  def find_post(year)
    self.cars.find_all { |car| car.year.to_i >= year.to_i }
  end

  def list_cars
    display_all(self.cars)
  end

  def display_all(cars)
    puts "HERE ARE ALL THE CARS: \n\n"
    cars.each do |car|
      puts "ID: #{car.inventory_id}| Year: #{car.year} | Make: #{car.make} | Model: #{car.model}"
    end
  end

  def remove_car(id)
    @cars.delete_if {|car| car.inventory_id.to_s == id.to_s }
  end

  def add_car(car)
    @cars << car
  end
end