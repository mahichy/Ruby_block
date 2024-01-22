class Order
  def initialize(email, total)
    @email = email
    @total = total
  end

  def to_s
    "#{@email}: $#{@total}"
  end
end

orders = []
5.times do |n|
  orders << Order.new("customer#{n}@gmail.com", n * 10)
end

# 1.upto(5) do |n|
#   orders << Order.new("customer#{n}@gmail.com", n * 10)
# end

puts orders
