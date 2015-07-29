# Random Numbers
puts rand
puts rand(5) #random number from 0-4 (inclusive)
puts(rand(5)+1) #random number from 1-5 (inclusive)
puts rand(1) #only returns zero

puts(Math::PI)                #3.141592653589793
puts(Math::E)                 #2.718281828459045
puts(Math.cos(Math::PI/3))    #0.5000000000000001
puts(Math.tan(Math::PI/4))    #0.9999999999999999
puts(Math.log(Math::E**2))    #2.0
puts((1 + Math.sqrt(5))/2)    #1.618033988749895