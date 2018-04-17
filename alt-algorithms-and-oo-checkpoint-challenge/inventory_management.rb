require_relative 'car'
require_relative 'car_loader'
require_relative 'car_adder'
require_relative 'dealership'
require 'pry'

filename = "inventory.csv"

dealership = Dealership.new(CarLoader.get_cars_from_csv(filename, Car))

  if ARGV[0] == "list"
    dealership.list_cars

  elsif ARGV[0] == "search"

  if ARGV[1] == "make"
    #binding.pry
    dealership.display_all(dealership.find_make(ARGV[2]))

  elsif ARGV[1] == "pre"
    dealership.display_all(dealership.find_pre(ARGV[2]))

  elsif ARGV[1] == "post"
    dealership.display_all(dealership.find_post(ARGV[2]))
  end

  elsif ARGV[0] == "remove"
    CarAdder.writer(filename, dealership.remove_car(ARGV[1]))

  elsif ARGV[0] == "add"
    dealership.add_car(Car.new(inventory_id: ARGV[1], year: ARGV[2], make: ARGV[3], model: ARGV[4]))
    CarAdder.writer(filename, dealership.cars)

end