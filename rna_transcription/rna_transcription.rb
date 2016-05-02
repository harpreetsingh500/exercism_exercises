class Complement
  DNA_TO_RNA = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
  
  def self.of_dna(strand)
    strand.split('').map do |nucleotide|
      raise ArgumentError unless DNA_TO_RNA.keys.include?(nucleotide)
      DNA_TO_RNA[nucleotide]
    end.join
  end
end
