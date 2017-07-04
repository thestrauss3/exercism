class Sieve
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
end

module BookKeeping
  VERSION = 1
end
