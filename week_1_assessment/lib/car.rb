require 'pry'

class Car
  attr_accessor :driver, :color
  def initialize(attrs = {})
    set_driver(attrs[:driver])
    
     end

  def set_color(color)
      @color = Car.new(color: self)

      
    end

  private
  
  def set_driver(obj)
    obj.nil? ? missing_driver : @driver = obj
  
  end

  def missing_driver
    raise 'A driver is required'
  end
end

