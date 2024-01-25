numbers = [1,2,3,4]

# results = numbers.reduce { |sum, number| sum + number }
results = numbers.reduce(:+)
results = numbers.reduce(:*)

puts results