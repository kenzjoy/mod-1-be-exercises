class Centaur
  attr_reader :name, 
              :breed

  attr_accessor :cranky,
                :standing

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @cranky_meter = 0
  end

  def shoot
    @cranky_meter += 1
    if @cranky_meter <= 3
      'Twang!!!'
    elsif @cranky_meter > 3
      'NO!'
    end
  end

  def run
    @cranky_meter += 1
    'Clop clop clop clop!'
  end

  def cranky?
    if @cranky_meter >= 3
      @cranky = true
    elsif @cranky_meter < 3
      @cranky = false
    end
  end

  def standing?
    @standing
  end
end