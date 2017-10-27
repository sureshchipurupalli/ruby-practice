class SimpleService

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def process
    if false # some condition met
      name = 'Akshay'
    end
    name
  end
end
