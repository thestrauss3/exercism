class Hamming
  def self.compute(str1, str2)
    raise ArgumentError if str1.length != str2.length
    hamming_distance = 0
    return 0 if str1 == str2
    str1.length.times do |i|
      hamming_distance += 1 if str1.slice(i) != str2.slice(i)
    end
    return hamming_distance
  end
end

module BookKeeping
  VERSION = 3
end
