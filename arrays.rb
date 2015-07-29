#ways to write arrays
numbers = [1,2,3,4,5]
words = ['cat', 'dog', 'toad']
better_words = %w{ cat dog frog bat mouse }

#join
foods = ["broc", "carrots", "coco"]
puts foods.join(" + ") + " = bae"

names = ["Kevin", "Josh"]
puts names[0].upcase #puts names.upcase >> This doesn't work
#needs to be like this >>
names.each do |n|
  puts n.upcase
end

#other methods
# push, shift, pop, unshift
# length
# ex: array[0] >> calls the fist spot of the array array

#sort
#orders an aray (in ascending order I think-- Check documentation)
a = [1,2,3,4,5,6,7]
a.sort

#include?
#checks if the argument is in the array
a = [1, 2, 3, 4, 5]
p a.include?(3)
p a.include?(6)

#flatten
#makes multi layer arrays flat
b = [1,2,3, [4,5,6], 7, [8,9]]
p b.flatten

# USE EACH FOR ITERATION AND MAP FOR TRANSFORMATION.

#each
e = %w{ bob cat kevin john boe nix }
e.each do |n|
  puts n.downcase.capitalize
end
#each_index 
#method cycles through the array and returned the index of each value (in order)
#this is similar to array.each do..end
c = [1,2,3,4,5,6]
c.each_index { |n| puts n }
#another way to write this
c.each_index do |n|
  puts n
end

#each_with_index
#this adds a second parameter to return the index when cycling through each item
d = ["kevin", "john", "bob", "jeff"]
#single line (dont forget to include a second parameter)
d.each_with_index { |val, idx| puts "#{idx + 1}) #{val}" } 
#this is great for listing thing
d.each_with_index do |n, i|
  n = n.downcase.capitalize
  puts "#{i + 1}. #{n}" 
end

#map
# map returns an array with the effects of the block
#  not that this is returned not puts
a = [1,2,3,4,5,6,7,8,9,10,12,12,19,20]
a_doubled = a.map { |n| n *2 }
