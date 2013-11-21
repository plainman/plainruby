require 'bacon'

describe Bacon do
  it "is edible" do
    expect(Bacon.new.edible?).to be_true
  end
  it "expired!" do
    bacon = Bacon.new
    expect(bacon).to be_edible    
    bacon.expired!
    expect(bacon).to_not be_edible
  end
end