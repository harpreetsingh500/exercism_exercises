require 'minitest/autorun'
require_relative 'pangram'

class PangramTest < Minitest::Test
  def test_sentence_empty
    str = ''
    refute Pangram.is_pangram?(str)
  end

  def test_pangram_with_only_lower_case
    str = 'the quick brown fox jumps over the lazy dog'
    assert Pangram.is_pangram?(str)
  end

  def test_missing_character_x
    str = 'a quick movement of the enemy will jeopardize five gunboats'
    refute Pangram.is_pangram?(str)
  end

  def test_pangram_with_mixed_case_and_punctuation
    str = '"Five quacking Zephyrs jolt my wax bed."'
    assert Pangram.is_pangram?(str)
  end

  def test_pangram_with_non_ascii_characters
    str = 'Victor jagt zwölf Boxkämpfer quer über den großen Sylter Deich.'
    assert Pangram.is_pangram?(str)
  end
end