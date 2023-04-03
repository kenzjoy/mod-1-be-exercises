class Bag
  attr_accessor :empty,
                :count

  def initialize
    @empty = true
    @count = 0
  end

  def empty?
    @empty
  end
end