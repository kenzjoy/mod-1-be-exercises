class Team
  attr_reader :country,
              :is_eliminated,
              :players

  def initialize(country)
    @country = country
    @is_eliminated = false
    @players = []
  end

  def eliminated?
    @is_eliminated
  end

  def eliminated
    @is_eliminated = true
  end
end