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

  def add_player(player)
    @players << player
  end

  def players_by_position(position)
    players_sorted = []
    sorted = @players.sort_by do |player|
      player.position
    end

    sorted.each do |player|
      if player.position == position
        players_sorted << player
      end
    end
    players_sorted
  end
end