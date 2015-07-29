# Procs (procedure) and Blocks
toast = Proc.new do
  puts "Cheers!"
end
toast.call

#Procs taking parameters
doYouLike = Proc.new do |aGoodThing|
  puts "I love " + aGoodThing + " so much."
end
doYouLike.call "Crack"
doYouLike.call "chocolate"

#first Proc
def doSomething someProc
  puts "Text before the call of someProc"
  someProc.call
  puts "Text after the call of someProc"
end

sayHello = Proc.new do
  puts "Hello there!"
end

sayGoodbye = Proc.new do
  puts "See ya later."
end

doSomething sayHello
doSomething sayGoodbye

#maybe wink
def maybeDo someProc
  if rand(2) == 0
    someProc.call
  end
end

def twiceDo someProc
  someProc.call
  someProc.call
end

wink = Proc.new do
  puts "(wink)"  
end

glance = Proc.new do
  puts "(glance)"  
end

twiceDo glance
maybeDo wink



## NO IDEA WHAT'S GOING ON BELOW HERE AND IF IT EVEN WORKS
def doUntilFalse firstInput, someProc
  input = firstInput
  output = firstInput

  while output
    input = output
    output = someProc.call
  end

  input
end

buildArrayOfSquares = Proc.new do |array|
  lastNumber = array.last
  if lastNumber <= 0
    false
  else
    array.pop
    array.push lastNumber*lastNumber
    array.push lastNumber - 1 
  end
end

alwaysFalse = Proc.new do |justIgnoreMe|
  false
end

puts doUntilFalse([5], buildArrayOfSquares).inspect
puts doUntilFalse("I'm doing this in NY.", alwaysFalse)

























