class Team
  attr_reader :country,
              :is_eliminated

  def initialize(country)
    @country = country
    @is_eliminated = false
  end

  def eliminated?
    @is_eliminated
  end

  def eliminated
    @is_eliminated = true
  end
end