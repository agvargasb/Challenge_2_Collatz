require_relative 'collatz_conjecture'

initial_time = Time.now
collatz = Collatz.new
N = 5


lengths = [1]
length = 0


(2..N).each do |n|
  value = n

  while value > lengths.size
    value = collatz.next(value)
    length += 1
  end

  lengths[n - 1] = length + lengths[value - 1]
end

puts lengths
