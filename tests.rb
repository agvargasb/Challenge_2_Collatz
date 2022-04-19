require_relative 'collatz_conjecture'

collatz = Collatz.new

puts collatz.sequence(5)
puts '-----------'
# puts collatz.sequence(326)
puts '-----------'
puts collatz.length(327)
puts '-----------'
puts collatz.length(410_011)
puts '-----------'
puts collatz.next(3), collatz.next(26)

puts '-----------'

for i in (1..10)
  next_c = collatz.next(i)
  puts next_c
  length = 1


end
