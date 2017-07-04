class Pangram
  @@alphabet = [*('a'..'z')]
  def self.pangram?(str)
    @@alphabet.all? { |char| str.downcase.include?(char) }
  end
end

module BookKeeping
  VERSION = 4
end
