require_relative 'collatz_conjecture'

initial_time = Time.now

collatz = Collatz.new

lengths = (1..499_999).to_a.map { |n| collatz.length(n) }

max = lengths.max

number = lengths.find_index(max) + 1

final_time = Time.now

total_time = final_time - initial_time

puts number, max, total_time
