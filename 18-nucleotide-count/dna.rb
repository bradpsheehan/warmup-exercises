class DNA

attr_reader :letters, :nucleotide_counts
def initialize(letters)
  @letters = letters.split("")
  @nucleotide_counts = {'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0}
  @letters.each do |letter|
    @nucleotide_counts[letter] += 1
  end
end

def count(nucleotide)
  nucleotide_counts[nucleotide]
end

end
