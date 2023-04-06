class Bag
  attr_accessor :empty,
                :count,
                :candies

  def initialize
    @empty = true
    @count = 0
    @candies = []
  end

  def empty?
    if !@candies.count.zero?
      @empty == false
    else 
      @empty
    end
  end

  def add_candy(candy)
    @candies << candy
  end

  def count
    @candies.count += @count
  end

  def contains?(candy)
    if @candies.include?(candy)
      true
    else 
      false
    end
  end
end