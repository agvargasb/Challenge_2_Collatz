require_relative 'collatz_conjecture'

initial_time = Time.now
collatz = Collatz.new
N = 5

lengths = [1, 2]

(3..N).each do |i|
  next_c = collatz.next(i)

  length = 1

  while next_c > 1
    if next_c < i
      length += lengths[next_c - 1]
      next_c = collatz.next(next_c)
    else
      next_c = collatz.next(next_c)
      length += 1
    end
  end

  lengths.append(length)
end

max = lengths.max
number = lengths.find_index(max) + 1

final_time = Time.now
total_time = final_time - initial_time

puts lengths
puts '-----------'
#puts number, max, total_time
