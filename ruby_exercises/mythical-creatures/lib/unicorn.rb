class Unicorn
  attr_reader :name,
              :color

  def initialize(name)
    @name = name
    @color = 'silver'
  end

  def silver?
    @color == 'silver'
  end
end