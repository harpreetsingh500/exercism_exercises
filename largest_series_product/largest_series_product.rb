class Series
  attr_reader :num
  
  def initialize(num)
    raise ArgumentError if !!(num =~ /\D+/)
    @num = num.split('').map(&:to_i)
  end
  
  def largest_product(range)
    return 1 if range == 0
    raise ArgumentError if range < 0 || range > num.size
    largest = 0
    num.each_cons(range) do |arr|
      total = arr.reduce(:*)
      largest = largest < total ? total : largest
    end
    largest
  end
end
