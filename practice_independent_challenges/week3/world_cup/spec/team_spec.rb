require './lib/team'
require './lib/player'

RSpec.describe Team do
  before(:each) do
    @team = Team.new('France')
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
end