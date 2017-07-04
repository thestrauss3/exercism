require 'Prime'

class Prime
  def self.nth(n)
    raise ArgumentError if n <= 0
    Prime.take(n).last
  end
end
