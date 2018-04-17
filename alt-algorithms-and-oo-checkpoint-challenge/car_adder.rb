require 'csv'

module CarAdder
  def self.writer(filename, cars)
    CSV.open(filename, "wb") do |csv|
      csv << ["inventory_id", "make", "model", "year"]
      cars.each do |car|
        csv << ["#{car.inventory_id}", "#{car.make}", "#{car.model}", "#{car.year}"]
      end
    end
  end
end