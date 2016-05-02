class Squares
  attr_reader :num
  
  def initialize(num)
    @num = num
  end
  
  def square_of_sum
    return 0 if num == 0
    [*1..num].reduce(:+) ** 2
  end
  
  def sum_of_squares
    return 0 if num == 0
    [*1..num].map { |number| number ** 2 }.reduce(:+)
  end
  
  def difference
    square_of_sum - sum_of_squares
  end
end
