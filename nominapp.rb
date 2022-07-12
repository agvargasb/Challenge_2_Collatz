require_relative 'collatz_conjecture'

collatz = Collatz.new

lista = collatz.sequence(1024)

p lista
