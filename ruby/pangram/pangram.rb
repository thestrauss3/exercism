class Pangram
  @@alphabet = [*('a'..'z')]
  def self.pangram?(str)
    @@alphabet.each do |letter|
      return false unless str.downcase.include?(letter)
    end
    true
  end
end

module BookKeeping
  VERSION = 4
end
