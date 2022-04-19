require_relative 'collatz_conjecture'

collatz = Collatz.new

puts '-----------'
puts collatz.length(327)
puts '-----------'
puts collatz.length(410_011)
puts '-----------'
puts collatz.next(3), collatz.next(26)

puts '-----------'

puts collatz.length(410_011, optimal: true)

