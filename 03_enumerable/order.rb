
class Order
  TAX_TABLE = { "CO" => 0.02, "MT" => 0.00, "AZ" => 0.04 }
  attr_reader :email, :total, :state, :status

  def initialize(email, state, total, status =:pending)
    @email = email
    @total = total
    @state = state
    @status = status
  end

  def tax 
    total * TAX_TABLE[state]
  end

  def to_s
    "#{email} (#{state}): $#{total} - #{status}"
  end
end

orders = []
orders << Order.new("customer1@example.com", "MT", 300)
orders << Order.new("customer2@example.com", "AZ", 400, :completed)
orders << Order.new("customer3@example.com", "CO", 200)
orders << Order.new("customer3@example.com", "CO", 100, :completed)

puts orders

puts "Big orders:"
big_orders = orders.select{ |o| o.total >= 300 }
puts big_orders 

puts "Small orders:"
# small_orders = orders.reject {|o| o.total >= 300}
# puts small_orders

# puts orders.reject {|o| o.total >= 300}
small_order = orders.reject do |o|
  o.total >= 300
end
puts small_order

puts "Pending Orders:"

puts orders.any? {|o| o.status == :pending }

order = orders.detect { |o| o.status == :pending }
puts order

# results = orders.partition { |o| o.status == :pending}
# p results

pending_orders, completed_orders = orders.partition { |o| o.status == :pending}

puts "Pending:"
puts pending_orders

puts "Completed:"
puts completed_orders

big_orders, small_orders = orders.partition { |o| o.total >= 300}
puts "Big:"
puts big_orders

puts "Small:"
puts small_orders

puts "Newsletter emails:"
# emails = []
# orders.each { |o| emails << o.email.downcase}
# p emails

emails = orders.map { |o| o.email.downcase}
p emails

puts "Taxes:"

co_taxes = orders.select {|o| o.state == "CO"}.map { |o| o.tax}
puts co_taxes

# co_orders = orders.select {|o| o.state == "CO"}
# co_taxes = co_orders.map { |o| o.tax}
# puts co_taxes

sum = 0
# orders.each { |order| sum += order.total}
sum = orders.reduce(0) { |sum, order| sum + order.total}

puts "Total sales: $#{sum}"

# total_tax = orders.reduce(0) { |total, order| total + order.tax}
total_tax = orders.map {|total| total.tax}.reduce(:+)
puts "Total tax #{total_tax}"







