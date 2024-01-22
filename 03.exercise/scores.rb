scores = [83, 71, 92, 64, 98, 87, 75, 69]

puts "High Score:"
high_scores = scores.select do |s|
  s > 80
end
puts high_scores

puts "Low score:"
low_scores = scores.reject do |s|
  s > 80
end
puts low_scores

puts "Enumerable"
puts scores.any? { |score| score < 70 }

puts "Detect:"
puts scores.detect { |score| score < 70 }