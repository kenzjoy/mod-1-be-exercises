class Dragon
  attr_reader :name, 
              :color,
              :rider,
              :hungry

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @eat_counter = 0
  end

  def hungry?
    @hungry
  end
  
  def eat
    @eat_counter += 1
    if @eat_counter >= 3
      @hungry = false
    end
  end
end