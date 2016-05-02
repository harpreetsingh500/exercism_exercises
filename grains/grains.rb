class Grains
  def self.square(num)
    2**(num - 1)
  end
  
  def self.total
    [*0..63].map { |num| 2**num }.reduce(:+) 
  end
end
