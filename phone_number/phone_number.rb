class PhoneNumber
  attr_reader :phone
  
  def initialize(phone)
    @phone = phone
  end
  
  def number
    return '0000000000' if phone =~ /[a-zA-Z]/
    num = phone.scan(/\d+/).join
    if num.size == 11 && num[0] == '1'
      num[0] = ''
    elsif num.size != 10
      return  '0000000000'
    end
    @phone = num
  end
  
  def area_code
    phone[0, 3]
  end
  
  def to_s
    number
    "(#{phone[0, 3]}) #{phone[3, 3]}-#{phone[6, 4]}"
  end
end
