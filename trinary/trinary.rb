class Trinary
  attr_reader :num
  
  def initialize(num)
    @num = num.reverse
  end
  
  def to_decimal
    return 0 if num.match(/[^012]/)
    @num = num.split('').map(&:to_i)
    num.map.with_index { |num, idx| num * (3 ** idx) }.reduce(:+)
  end
end
