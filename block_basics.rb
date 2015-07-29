#BLOCKS 

#.times is a method. we are attatching the block to the method
3.times do
  puts "Echo!"
end

#another way to write this
3.times() { puts "Echo!" }

#.times passes iteration amount to the block. Block peramiters go in pipes after do
#params are just variable so you can call it whatever
#A param is a local variable used for the block
3.times do |number|
  puts "#{number} Echo!"
end

# {} do the same thing as do and end
3.times { |n| puts " #{n} Echo!" }


1.upto(3) { |n| puts "  #{n} Echo." }

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
1.upto(5) do |n| #1.upto(5) is used to give 1, 2, 3, 4, 5. insead of having to start from 0
  rand_total = rand((100)+1)
  orders << Order.new("customer #{n}", rand_total)  
end

puts orders





