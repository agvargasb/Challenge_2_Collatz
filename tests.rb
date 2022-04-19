require_relative 'collatz_conjecture'

collatz = Collatz.new

puts '-----------'
puts collatz.length(327)
puts '-----------'
puts collatz.length(410_011)
puts '-----------'
puts collatz.next(3), collatz.next(26)

puts '-----------'

(1..10).each do |i|
  next_c = collatz.next(i)
  puts next_c
  length = 1
end

