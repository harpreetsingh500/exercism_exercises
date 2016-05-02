class Hamming
  def self.compute(strand_1, strand_2)
    raise ArgumentError if strand_1.length != strand_2.length
    number_of_mutations = 0
    strand_1.length.times do |idx|
      number_of_mutations += 1 if strand_1[idx] != strand_2[idx]
    end
    number_of_mutations
  end
end
