class Complement
  def self.of_dna(str)
    newstr = ''
    str.length.times do |i|
      ['A','C','G','T'].include?(str.slice(i)) ? newstr += convert(str.slice(i)) :  (newstr = ''; break)
    end
    newstr
  end

  def self.convert(char)
    case char
    when 'A'
      'U'
    when 'C'
      'G'
    when 'G'
      'C'
    when 'T'
      'A'
    end
  end
end

module BookKeeping
  VERSION = 4
end
