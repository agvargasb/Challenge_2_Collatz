require_relative 'collatz_conjecture'

initial_time = Time.now
collatz = Collatz.new
N = 499_999


lengths = [1, 2]

(3..N).each do |n|
  value = n
  length = 0

  while value > lengths.size
    value = collatz.next(value)
    length += 1
  end

  lengths.append(length + lengths[value - 1])
end

max = lengths.max
number = lengths.find_index(max) + 1

final_time = Time.now
total_time = final_time - initial_time

puts number, max, total_time
