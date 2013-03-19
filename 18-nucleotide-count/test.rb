require 'minitest/autorun'
require 'minitest/pride'
require_relative './dna'

class DNATest < MiniTest::Unit::TestCase
  def test_empty_dna_string_has_no_adenosine
    assert_equal 0, DNA.new('').count('A')
  end

  def test_empty_dna_string_has_no_nucleotides
    expected = {'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0}
    assert_equal expected, DNA.new("").nucleotide_counts
  end

  def test_repetitive_cytidine_gets_counted
    assert_equal 5, DNA.new('CCCCC').count('C')
  end

  def test_repetitive_sequence_has_only_guanosine
    expected = {'A' => 0, 'T' => 0, 'C' => 0, 'G' => 8}
    assert_equal expected, DNA.new('GGGGGGGG').nucleotide_counts
  end

  def test_counts_only_thymidine
    assert_equal 1, DNA.new('GGGGGTAACCCGG').count('T')
  end

  def test_countes_each_nucleotide_once
    dna = DNA.new('GATTACA')
    dna.count('T')
    assert_equal 2, dna.count('T')
  end

  def test_counts_all_nucleotides
    s = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
    dna = DNA.new(s)
    expected = {'A' => 20, 'T' => 21, 'G' => 17, 'C' => 12}
    assert_equal expected, dna.nucleotide_counts
  end
end