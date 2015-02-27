class RomanNumerals

  ROMAN_NUMERALS = {1000 => "M",
                    900 => "CM",
                    500 => "D", 
                    400 => "CD",
                    100 => "C", 
                    90 => "XC",
                    50 => "L", 
                    40 => "XL", 
                    10 => "X", 
                    9 => "IX", 
                    5 => "V", 
                    4 => "IV", 
                    1 => "I"}

  def self.convert(number)
    roman_numeral = ""
    ROMAN_NUMERALS.each do |k, v|
      (number / k).times { roman_numeral << v; number -= k }
    end
    roman_numeral
  end

  def self.reconvert(numeral)
    number = 0
    numeral.split(//).each do |letter|
      number = number + ROMAN_NUMERALS.invert[letter]
    end
    number
  end

end
