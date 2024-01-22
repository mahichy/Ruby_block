
class Order
attr_reader :email, :total

  def initialize(email, total)
    @email = email
    @total = total
  end

  def to_s
    "#{email}: $#{total}"
  end
end

orders = []
1.upto(5) do |n|
  orders << Order.new("customer#{n}@gmail.com", n * 10)
end

puts "Newsletter Emails:"

orders.each do |o|
  puts "#{o.email}"
end

orders.each do |t|
  puts t.total
end