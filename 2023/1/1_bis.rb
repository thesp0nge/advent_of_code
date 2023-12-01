class String

  def from_literal_to_number
    return "1" if self.downcase == "one"
    return "2" if self.downcase == "two"
    return "3" if self.downcase == "three"
    return "4" if self.downcase == "four"
    return "5" if self.downcase == "five"
    return "6" if self.downcase == "six"
    return "7" if self.downcase == "seven"
    return "8" if self.downcase == "eight"
    return "9" if self.downcase == "nine"

  end
  def is_integer?
    self.to_i.to_s == self
  end

  def get_calibration_number
    regex=/(\d|one|two|three|four|five|six|seven|eight|nine)/
    matches=self.scan(regex)
    first_s = matches[0][0]
    last_s = matches[-1][0]

    op1 = first_s.to_s if first_s.is_integer?
    op1 = first_s.from_literal_to_number if not first_s.is_integer?

    op2 = last_s.to_s if last_s.is_integer?
    op2 = last_s.from_literal_to_number if not last_s.is_integer?

    puts "#{(op1 + op2).to_i}"
    return (op1 + op2).to_i
  end
end

lines = File.readlines('input')

sum = 0

lines.each do |l|
  sum +=l.chomp.get_calibration_number
end

puts sum
