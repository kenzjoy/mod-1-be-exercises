class Hobbit
  attr_reader :name,
              :disposition,
              :age,
              :old

  def initialize(name, disposition = 'homebody')
    @name = name
    @disposition = disposition
    @age = 0
    @old = false
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    @age > 32
  end

  def old?
    if @age > 100
      @old = true
    end
    @old
  end

  def has_ring?
    @name == 'Frodo'
  end

  def is_short?
    true
  end
end