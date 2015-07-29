def cat
end

cat # will return nil since nothing in there

def brain
  puts "hello"
end

coke #returns what's in there exactly

def dope
  "hello"
end

puts dope #giving it a verb (puts) and filling the noun (dope)

def beers number_of_beers #beers is the method and number_of_beers is a variable asign when using the method
  if number_of_beers > 20
    puts "I have " + number_of_beers.to_s + " beers."
    puts "We are going to have a good time tonight."
  elsif number_of_beers == 1
    puts "I have only " + number_of_beers.to_s + " beer."
    puts "What's open at this time?"
  else
    puts "I have only " + number_of_beers.to_s + " beers."
    puts "What's open at this time?"
  end
end

beers 1

def ask question #[method, arg]
  goodAnswer = false
  while (not goodAnswer)
    puts question
    reply = gets.chomp.downcase
    
    if (reply == "yes" or reply == "no")
      goodAnswer = true
      if reply == "yes"
        answer = true
      else
        answer = false
      end
    else
      puts "Please answer with 'yes' or 'no'"
    end
  end
  answer
end

ask "Do you like what you see?"
ask "You got a problem?"
answer = ask "Do you like to get you assed kicked?"

if answer == false
  puts "Walk away"
else
  puts "Kick their ass"
end


