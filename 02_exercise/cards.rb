cards = ["Jack", "Queen", "King", "Ace", "Joker"]

cards.reverse_each do |card|
  puts "#{card.upcase} - #{card.length}"
end

scores = {"Larry" => 10, "Moe" => 8, "Curly" => 12}
scores.each { |name, score| puts "#{name} scored a #{score}!"}

# cards.shuffle.each do |card|
#   puts "#{card.upcase} - #{card.length}"
# end

# cards.each do |card|
#   puts "#{card.upcase} - #{card.length}"
# end

desserts = { "chocolate" => 1.00, "vanilla" => 0.75, "cinnamon" => 1.25 }
desserts.each do |flaver, price|
  puts "#{price* 2} for a cup of #{flaver}"
end