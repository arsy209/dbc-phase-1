class Company
    attr_accessor :company_name, :employees
  def initialize(args={})
    @company_name = args.fetch(:name,"")
    @employees    = args.fetch(:employees,[])
  end
  def add_employee(employee)
    @employees << employee
  end
end
