class Pangram
  def self.is_pangram?(str)
    str.downcase.gsub(' ', '').split('').uniq.count >= 26
  end
end