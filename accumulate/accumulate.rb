class Array
  def accumulate
    new_arr = []
    self.each { |ele| new_arr << yield(ele) }
    new_arr
  end
end
