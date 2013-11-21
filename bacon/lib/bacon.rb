class Bacon
  attr_accessor :expired
  def initialize
    @expired=false
  end

  def edible?
    !self.expired
  end

  def expired!
    self.expired = true
  end
end