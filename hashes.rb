#Hashes

#old syntax
some_hash = {:name => 'bob'}
#new syntax
new_hash = {name: "bob"}
#multiple key-value pairs
person = {title: "Accountant", company: "QTL Logistics"}
#adding to an existing Hashe
person[:age] = 40
person[:sex] = "male"

#deleting info in hash
person.delete(:sex)
#retrieving info from hash
p person[:age]

#merging two hashes together
# ! makes the change destructive
person.merge!(some_hash)
p person

#iteratig over hashes
person = {name: "bob", height: "6 ft", weight: "160lbs", hair: "brown"}

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end

#optional parameters
def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" + 
    " years old and I live in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Bob", age: 62, city: "New York City")

# When deciding whether to use a hash or an array, ask yourself a few questions:
# Does this data need to be associated with a specific label? If yes, use a hash. If the data doesn't have a natural label, then typically an array will work fine.
# Does order matter? If yes, then use an array. As of Ruby 1.9, hashes also maintain order, but usually ordered items are stored in an array.
# Do I need a "stack" or a "queue" structure? Arrays are good at mimicking simple "first-in-first-out" queues, or "last-in-first-out" stacks.