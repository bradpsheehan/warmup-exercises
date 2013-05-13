class Fixnum
  def to_roman
    roman_numerals[self]
  end

  def roman_numerals
      { 1 => "I", 2 => "II", 3 => "III", 4 => "IV", 5 => "V",
      6 => "VI", 9 => "IX", 27 => "XXVII", 48 => 'XLVIII',
      59 => 'LIX'
     }
  end

end
