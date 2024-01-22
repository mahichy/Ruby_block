
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

