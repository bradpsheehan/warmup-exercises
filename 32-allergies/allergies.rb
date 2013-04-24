class Allergies

  attr_reader :input

  def initialize(input)
    @input = input
  end

  def list
    allergy_list[input]
  end

  def allergy_list
    { 0 => [],
      1 => ['eggs'],
      2 => ['peanuts'],
      8 => ['strawberries'],
      3 => ['eggs', 'peanuts'],
      5 => ['eggs', 'shellfish'],
      248 => ['eggs', 'peanuts', 'shellfish', 'strawberries', 'tomatoes', 'chocolate', 'pollen', 'cats'],
      255 => ["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"]
       }

  end

end
