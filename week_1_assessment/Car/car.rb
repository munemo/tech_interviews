class Car
  attr_accessor :driver
  def initialize(attrs = {})
    set_driver(attrs[:driver])
     end

  def set_color(color)
    @color = color
 end

  

  def set_driver(obj)
    obj.nil? ? missing_driver : @driver = obj
  end

  def missing_driver
    raise 'A driver is required'
  end
end
