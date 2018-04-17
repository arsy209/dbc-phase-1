require 'csv'
require_relative 'car'
module CarLoader
  def self.get_cars_from_csv(filename, klass)
    cars = []
    CSV.foreach(filename, :headers => true, :header_converters => :symbol) do |row|
      cars << klass.new(row.to_hash)
    end
    return cars
  end
end



  