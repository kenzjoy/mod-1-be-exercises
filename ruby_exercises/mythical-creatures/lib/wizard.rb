class Wizard
  attr_reader :name

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @spells = 0
  end

  def bearded?
    @bearded
  end

  def incantation(root_power)
    "sudo #{root_power}"
  end

  def rested?
    @spells < 3
  end

  def cast
    @spells += 1
    'MAGIC MISSILE!'
  end
end