require './lib/team'
require './lib/player'

RSpec.describe Team do
  before(:each) do
    @team = Team.new('France')
    @mbappe = Player.new( {
      name: 'Kylian Mbappe', 
      position: 'forward'
    } )
    @pogba = Player.new( {
      name: 'Paul Pogba', 
      position: 'midfielder'
    } ) 
  end

  it 'exists' do
    expect(@team).to be_a(Team)
  end

  it 'has attributes' do
    expect(@team.country).to eq('France')
  end

  describe '#eliminated' do
    it 'changes the teams status to eliminated' do
      expect(@team.eliminated?).to eq(false)

      @team.eliminated

      expect(@team.eliminated?).to eq(true)
    end
  end

  describe '#players' do
    it 'returns an array of all the current players on a team' do
      expect(@team.players).to eq([])
    end
  end

  describe '#add_player(player)' do
    it 'adds a player to the team.players array' do
      @team.add_player(@mbappe)
      @team.add_player(@pogba)

      expect(@team.players).to eq([@mbappe, @pogba])
    end
  end

  describe '#players_by_position(position)' do
    it 'returns an array of players based on the given position' do
      @team.add_player(@mbappe)
      @team.add_player(@pogba)

      expect(@team.players_by_position('midfielder')).to eq([@pogba])
      expect(@team.players_by_position('defender')).to eq([])
    end
  end
end