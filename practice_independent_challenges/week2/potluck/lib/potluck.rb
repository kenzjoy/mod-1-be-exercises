class Potluck
  attr_reader :date, 
              :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(course)
    all_from_category = []
    @dishes.each do |dish|
      if dish.category == course
        all_from_category << dish
      end
    end
    all_from_category
  end

  def menu
    sorted = @dishes.sort_by { |dish| dish.name }

    menu_hash = {
      :appetizers => [],
      :entres => [],
      :desserts => []
    }

    sorted.each do |dish|
      if dish.category == :appetizer
        menu_hash[:appetizers] << dish.name
      elsif dish.category == :entre
        menu_hash[:entres] << dish.name
      elsif dish.category == :dessert
        menu_hash[:desserts] << dish.name
      end
    end
    menu_hash
  end

  def ratio(category)
    category_count = get_all_from_category(category).length.to_f
    (category_count / @dishes.length) * 100
  end
end