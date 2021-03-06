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

  def self.convert(arg)
    return self.to_roman(arg) if arg.class == Fixnum
    return self.to_arabic(arg) if arg.class == String
  end

  def self.to_roman(number)
    roman_numeral = ""
    ROMAN_NUMERALS.each do |k, v|
      (number / k).times { roman_numeral << v; number -= k }
    end
    roman_numeral
  end

  def self.to_arabic(numeral)
    number = 0
    ROMAN_NUMERALS.invert.each do |k, v|
      while (numeral.index(k) == 0)
        number += v       
        numeral.slice!(k)
      end
    end
    number
  end

end
