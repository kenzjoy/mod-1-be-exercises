require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
  before(:each) do
    @potluck = Potluck.new('7-13-18')
  end

  it 'exists' do
    expect(@potluck).to be_a(Potluck)
  end

  it 'has attributes' do
    expect(@potluck.date).to eq('7-13-18')
    expect(@potluck.dishes).to eq([])
  end
end