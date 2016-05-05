class Array
  def keep
    select { |ele| yield(ele) }
  end
  
  def discard
    select { |ele| !(yield(ele)) }
  end
end
