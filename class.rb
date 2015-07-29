#dice roll
# class Die
#   def roll
#     @numberShowing = 1 + rand(6)
#   end

#   def showing
#     @numberShowing
#   end
# end
# puts Die.new.showing


#dragon
class Dragon
  #initialize
  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly = 10 
    @stuffInIntestine = 0

    puts @name + " is born!"
  end
  
  def feed
    puts "You feed " + @name + "."
    @stuffInIntestine = 0
    passingOfTime
  end

  def walk
    puts "You walk " + @name + "."
    @stuffInIntestine = 0
  end

  def putToBed
    puts "You put " + @name + " to bed."
    @asleep = true
    
    3.times do
      if @asleep
        passingOfTime
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + " wakes up slowly."
    end
  end

  def toss
    puts "You toss " + @name + " in the air."
    puts @name + " giggles, which singes your eyebrows."
    passingOfTime
  end

  def rock
    puts "You rock " + @name + "gently"
    @asleep = true
    puts @name + " briefly dozes off..."
    passingOfTime
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private

  def hungry?
    @stuffInBelly <= 2 # Method names can end with "?". Usually, we only do this if the method returns true or false, like this:
  end

  def shit?
    @stuffInIntestine >= 8
  end

  def passingOfTime
    if @stuffInBelly > 0
      @stuffInBelly -= 1
      @stuffInIntestine += 1
    else
      if @asleep
        @asleep = false
        puts @name + "Wakes up suddenly."
      end
      puts @name + "is starving!  In desperation, he ate YOU!"
      exit
    end

    if @stuffInIntestine > 10
      @stuffInIntestine = 0
      puts "Whoops!  " + @name + " had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts @name + "'s stomach grumbles..."
    end

    if shit?
      if @asleep
       @asleep = false
       puts 'He wakes up suddenly!'
      end
      puts @name + " does the potty dance..."
    end
  end
end

pet = Dragon.new "Albert"
pet.feed
pet.toss
pet.walk
pet.putToBed
pet.rock
pet.putToBed
pet.putToBed
pet.putToBed
pet.putToBed












