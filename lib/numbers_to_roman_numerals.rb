class Number

  def initialize
    @number = number
  end

  def number
    @number
  end

  def to_roman_numerals(number)
    final_result = []
    ones = { "1" => "I", "2" => "II", "3" => "III", "4" => "IV", "5" => "V", "6" => "VI", "7" => "VII", "8" => "VIII", "9" => "IX" }
    tens = { "1" => "X", "2" => "XX", "3" => "XXX", "4" => "XL", "5" => "L", "6" => "LX", "7" => "LXX", "8" => "LXXX", "9" => "XC" }
    hundreds = { "1" => "C", "2" => "CC", "3" => "CCC", "4" => "CD", "5" => "D", "6" => "DC", "7" => "DCC", "8" => "DCCC", "9" => "CM" }
    thousands = { "1" => "M",  "2" => "MM", "3" => "MMM" }
    array_number = number.to_s.split('')
    array_number.each.with_index do |to_numerals, index|
      if index == array_number.length - 1
        final_result <<  ones.fetch(to_numerals)
      elsif index == array_number.length - 2
        final_result << tens.fetch(to_numerals)
      elsif index == array_number.length - 3
        final_result << hundreds.fetch(to_numerals)
      elsif index == array_number.length - 4
        final_result << thousands.fetch(to_numerals)
      end
    end
    final_result.join
  end
end
