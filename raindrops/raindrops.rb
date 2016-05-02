class Raindrops
  PRIMES = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }
  
  def self.convert(number)
    string = ''
    [3, 5, 7].each { |prime| string << PRIMES[prime] if number % prime == 0 }
    string.empty? ? number.to_s : string
  end
end
