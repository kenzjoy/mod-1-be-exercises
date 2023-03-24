require './lib/werewolf'

RSpec.describe Werewolf do
  it 'has a name' do
    werewolf = Werewolf.new('David')
    expect(werewolf.name).to eq('David')
  end

  it 'has a location' do
    werewolf = Werewolf.new('David', 'London')
    expect(werewolf.location).to eq('London')
  end

  xit 'is by default human' do
    werewolf = Werewolf.new('David', 'London')
    expect(werewolf.human?).to be true
  end

  xit 'when starting as a human, changing makes it turn into a werewolf' do
    werewolf = Werewolf.new('David', 'London')
    werewolf.change!
    expect(werewolf.wolf?).to be true
    expect(werewolf.human?).to be false
  end

  xit 'when starting as a human, changing again makes it be human again' do
    werewolf = Werewolf.new('David', 'London')
    expect(werewolf.human?).to be true

    werewolf.change!

    expect(werewolf.human?).to be false

    werewolf.change!

    expect(werewolf.human?).to be true
  end

  xit 'when starting as a werewolf, changing a second time makes it a werewolf' do
    werewolf = Werewolf.new('David', 'London')

    werewolf.change!
    expect(werewolf.wolf?).to be true

    werewolf.change!
    werewolf.change!

    expect(werewolf.wolf?).to be true
  end

  xit 'is not hungry by default' do
    # your code here
  end

  xit 'becomes hungry after changing to a werewolf' do
    # your code here
  end

  class Victim
    attr_accessor :status

    def initialize
      @status = :alive
    end
  end

  xit 'consumes a victim' do
    # your code here
  end

  xit 'cannot consume a victim if it is in human form' do
    # your code here
  end

  xit 'a werewolf that has consumed a human being is no longer hungry' do
    # your code here
  end

  xit 'a werewolf who has consumed a victim makes the victim dead' do
    # your code here
  end
end
