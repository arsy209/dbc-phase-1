require_relative "../employee"

describe Employee do
  let(:employee) { Employee.new("Elle Gilbert", "Chief Executive Officer", 42) }

  it "has a readable name" do
    expect(employee.name).to eq("Elle Gilbert")
  end
  it "has a readable position" do
  	expect(employee.position).to eq "Chief Executive Officer"
  end

  it "has a readable id" do
  	expect(employee.id).to eq 42
  end

  it "has a writable name" do
    expect { employee.name = "Brittny Gilbert" }.to change { employee.name }.to "Brittny Gilbert"
  end

   it "has a writable position" do
    expect { employee.position = "Chief Executive Officer" }.to change { employee.position }.to "pokemon master"
  end

end
