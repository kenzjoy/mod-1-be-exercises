require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
  before(:each) do
    @potluck = Potluck.new('7-13-18')
    @couscous_salad = Dish.new('Couscous Salad', :appetizer)
    @cocktail_meatballs = Dish.new('Cocktail Meatballs', :entre)
    @summer_pizza = Dish.new('Summer Pizza', :appetizer)
    @roast_pork = Dish.new('Roast Pork', :entre)
    @candy_salad = Dish.new('Candy Salad', :dessert)
    @bean_dip = Dish.new('Bean Dip', :appetizer)
  end

  # Iteration 2

  it 'exists' do
    expect(@potluck).to be_a(Potluck)
  end

  it 'has attributes' do
    expect(@potluck.date).to eq('7-13-18')
    expect(@potluck.dishes).to eq([])
  end

  describe '#add_dish(dish)' do
    it 'adds a dish to the dishes array' do
      @potluck.add_dish(@couscous_salad)
      @potluck.add_dish(@cocktail_meatballs)

      expect(@potluck.dishes).to eq([@couscous_salad, @cocktail_meatballs])
      expect(@potluck.dishes.length).to eq(2)
    end
  end

  # Iteration 3

  describe '#get_all_from_category(category)' do
    it 'returns all of the dished from a specified category' do
      @potluck.add_dish(@couscous_salad)
      @potluck.add_dish(@summer_pizza)
      @potluck.add_dish(@roast_pork)
      @potluck.add_dish(@cocktail_meatballs)
      @potluck.add_dish(@candy_salad)

      expect(@potluck.get_all_from_category(:appetizer)).to eq([@couscous_salad, @summer_pizza])
      expect(@potluck.get_all_from_category(:appetizer).first).to eq(@couscous_salad)
      expect(@potluck.get_all_from_category(:appetizer).first.name).to eq('Couscous Salad')
    end
  end

  # Iteration 4

  describe '#menu' do
    it 'returns a hash with dish.category as the key and dish.name(s) as the values' do
      @potluck.add_dish(@couscous_salad)
      @potluck.add_dish(@summer_pizza)
      @potluck.add_dish(@roast_pork)
      @potluck.add_dish(@cocktail_meatballs)
      @potluck.add_dish(@candy_salad)
      @potluck.add_dish(@bean_dip)

      menu_hash = {
        :appetizers => ['Bean Dip', 'Couscous Salad', 'Summer Pizza'],
        :entres => ['Cocktail Meatballs', 'Roast Pork'],
        :desserts => ['Candy Salad']
      }
      
      expect(@potluck.menu).to eq(menu_hash)
    end
  end
end