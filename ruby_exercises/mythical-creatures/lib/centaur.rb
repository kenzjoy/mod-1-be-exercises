class Centaur
  attr_reader :name, 
              :breed

  attr_accessor :cranky,
                :standing,
                :laying

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @cranky_meter = 0
  end

  def shoot
    @cranky_meter += 1
    if @cranky_meter <= 3 && @laying == false
      'Twang!!!'
    elsif @cranky_meter > 3 || @laying == true
      'NO!'
    end
  end

  def run
    @cranky_meter += 1
    if @laying == false
      'Clop clop clop clop!'
    elsif @laying == true
      'NO!'
    end
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

  def sleep
    @cranky_meter = 0
    if @standing == true
      'NO!'
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def laying?
    @laying
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def drink_potion
    @cranky_meter = 0
    if @standing == true
      'Yummy!'
    elsif @standing == false
      'NO!'
    end
  end
end