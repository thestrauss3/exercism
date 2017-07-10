require 'pry'

class Prime
  def initialize(num)
    @num = num
  end

  def primes(array = [*(2..@num)], iteration = 0)
    return array if array.length == iteration
    next_value = array[iteration]
    array.each_with_index do |num, index|
      array.delete(num) if num % next_value == 0 && num != next_value
    end
    primes(array, iteration + 1)
  end

  def self.nth(n, array = [*(2..(n*100))], iteration = 0)
    # binding.pry
    return array[n-1] unless iteration < Math.sqrt(n)
    next_value = array[iteration]
    array.each_with_index do |num, index|
      array.delete(num) if num % next_value == 0 && num != next_value
    end
    self.nth(n, array, iteration + 1)
  end
end
