require_relative 'collatz_conjecture'

collatz = Collatz.new

lengths = (1..499).to_a.map { |n| collatz.length(n) }

max = lengths.max

number = lengths.find_index(max) + 1

puts number, max
