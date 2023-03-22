class Wizard
  attr_reader :name

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
  end

  def bearded?
    @bearded
  end

  def incantation(root_power)
    "sudo #{root_power}"
  end

  def rested?
    @rested
  end
end