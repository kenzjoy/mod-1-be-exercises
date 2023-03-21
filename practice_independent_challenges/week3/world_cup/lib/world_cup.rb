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
      if team.is_eliminated == false
        team.players.each do |player|
          if player.position == position
            active_players << player
          end
        end
      end
    end
    active_players
  end
  
  def all_players_by_position
    sorted = @teams.each do |team|
      team.players.sort_by do |player|
        player.position
      end
    end

    players_hash = {
      'forward' => [],
      'midfielder' => [],
      'defender' => []
    }

    sorted.each do |player|
      require 'pry'; binding.pry
      player.each do |p|
        if p.position == 'forward'
          players_hash[:forward] << player
        elsif p.position == 'midfielder'
          players_hash[:midfielder] << player
        elsif p.position == 'defender'
          players_hash[:defender] << player
        end
      end
    end
    players_hash
  end
end