class Squares
  attr_accessor :num
  def initialize(num)
    @num = num
    # @sum_of_squares = sum_of_squares
    # @square_of_sum = square_of_sum
  end

  def sum_of_squares
    result = 0
    @num.times do |i|
      result += (i+1)**2
    end
    result
  end

  def square_of_sum
    result = 0
    @num.times do |i|
      result += i+1
    end
    result * result
  end

  def difference
    self.square_of_sum - self.sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
