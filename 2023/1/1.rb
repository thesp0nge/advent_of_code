class String
  def get_first_digit
    return self[/\d/]
  end

  def get_last_digit
    return self.reverse[/\d/]
  end

  def get_calibration_number
    return (get_first_digit + get_last_digit).to_i
  end
end

lines = File.readlines('input')

sum = 0

lines.each do |l|
  sum += l.chomp.get_calibration_number
end

puts sum
