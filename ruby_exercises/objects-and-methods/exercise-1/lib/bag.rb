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
    @empty
  end

  def add_candy(candy)
    @candies << candy
  end
end