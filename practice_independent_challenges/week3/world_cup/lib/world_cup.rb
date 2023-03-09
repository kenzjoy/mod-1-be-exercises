class WorldCup
  attr_reader :year, 
              :teams

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    active_players = []
    @teams.each do |team|
      team.players.each do |player|
        if player.position == position
          active_players << player
        end
      end
    end
    active_players
  end
end