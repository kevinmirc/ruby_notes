# > my_file = File.new("simple_file.txt", "w+")
#  => #<File:simple_file.txt>
# > my_file.close
#  => nil
# > File.open("simple_file.txt", "w") { |file| file.write("adding first line of text")}
#  => 25
# > File.read(my_file)
#  => "adding first line of text"
# > sample = my_file
#  => #<File:simple_file.txt (closed)>
# > File.open(sample, "w+")
#  => #<File:simple_file.txt>
# > sample.puts("another example of writing to a file")
# IOError: closed stream
#   from (irb):8:in `write'
#   from (irb):8:in `puts'
#   from (irb):8
#   from /Users/kevinmircovich/.rvm/rubies/ruby-2.0.0-p451/bin/irb:12:in `<main>'
# > File.close(sample)
# NoMethodError: undefined method `close' for File:Class
#   from (irb):9
#   from /Users/kevinmircovich/.rvm/rubies/ruby-2.0.0-p451/bin/irb:12:in `<main>'
# > sample.close
# IOError: closed stream
#   from (irb):10:in `close'
#   from (irb):10
#   from /Users/kevinmircovich/.rvm/rubies/ruby-2.0.0-p451/bin/irb:12:in `<main>'
# > my_file.close
# IOError: closed stream
#   from (irb):11:in `close'
#   from (irb):11
#   from /Users/kevinmircovich/.rvm/rubies/ruby-2.0.0-p451/bin/irb:12:in `<main>'
# > sample.close
# IOError: closed stream
#   from (irb):12:in `close'
#   from (irb):12
#   from /Users/kevinmircovich/.rvm/rubies/ruby-2.0.0-p451/bin/irb:12:in `<main>'
# > sample = File.open("simple_file.txt",  "w+")
#  => #<File:simple_file.txt>
# > sample.puts("another example of writing code into a file")
#  => nil
# > sample.close
#  => nil
# > File.read(sample)
#  => "another example of writing code into a file\n"
# > File.open(sample, "a+") do |file|
# >     file << "here we are with a new line of code"
# >   end
#  => #<File:simple_file.txt (closed)>
# > File.readlines(sample) do |line|
# >     puts line
# >   end
#  => ["another example of writing code into a file\n", "here we are with a new line of code"]
# > File.open(sample, "a+") do |f|
# >     f.write "writing to files with Ruby is fun..... yay.. /:"
# >   end
#  => 47
# > File.readlines(sample).each_with_index do |line, line_number|
# >     puts "#{line_number}: #{line}"
# >   end
# 0: another example of writing code into a file
# 1: here we are with a new line of codewriting to files with Ruby is fun..... yay.. /:
#  => ["another example of writing code into a file\n", "here we are with a new line of codewriting to files with Ruby is fun..... yay.. /:"]
# > File.delete(sample)
#  => 1
# > File.delete(my_file)
# Errno::ENOENT: No such file or directory - simple_file.txt
#   from (irb):30:in `delete'
#   from (irb):30
#   from /Users/kevinmircovich/.rvm/rubies/ruby-2.0.0-p451/bin/irb:12:in `<main>'
# > sample = File.new("sample_file.txt", "w+")
#  => #<File:sample_file.txt>
# > "another example of writing to a file.\nHere we are with a new line of textWriting to files in Ruby is simple."
#  => "another example of writing to a file.\nHere we are with a new line of textWriting to files in Ruby is simple."
# > sample.close
#  => nil
# > File.read(sample)
#  => ""
# > smaple
# NameError: undefined local variable or method `smaple' for main:Object
#   from (irb):35
#   from /Users/kevinmircovich/.rvm/rubies/ruby-2.0.0-p451/bin/irb:12:in `<main>'
# > sample
#  => #<File:sample_file.txt (closed)>
# > File.close(sample)
# NoMethodError: undefined method `close' for File:Class
#   from (irb):37
#   from /Users/kevinmircovich/.rvm/rubies/ruby-2.0.0-p451/bin/irb:12:in `<main>'
# > File.readlines(sample)
#  => []
# > File.open(sample, "w+") do |f|
# >     f.write ""another example of writing to a file.\nHere we are with a new line of textWriting to files in Ruby is simple."
# > end
# > File.read(sample)
# > File.readlines(sample)
# > sample.close
# > "
# >   end
# SyntaxError: (irb):40: syntax error, unexpected tIDENTIFIER, expecting keyword_end
# f.write ""another example of writing to a file...
#                  ^
# (irb):40: syntax error, unexpected $undefined, expecting '('
# ... example of writing to a file.\nHere we are with a new line ...
# ...                               ^
# (irb):40: syntax error, unexpected keyword_in, expecting keyword_end
# ...line of textWriting to files in Ruby is simple."
# ...                               ^
# (irb):40: syntax error, unexpected tSTRING_BEG, expecting '('
#   from /Users/kevinmircovich/.rvm/rubies/ruby-2.0.0-p451/bin/irb:12:in `<main>'
# > File.readlines(sample)
#  => []
# > File.open(sample, "w+") do |file|
# >     file.write "another example of writing to a file.\nHere we are with a new line of textWriting to files in Ruby is simple."
# >   end
#  => 108
# > File.readlines(sample)
#  => ["another example of writing to a file.\n", "Here we are with a new line of textWriting to files in Ruby is simple."]
# > File.read(sample)
#  => "another example of writing to a file.\nHere we are with a new line of textWriting to files in Ruby is simple."
# > original = File.new("original_file.txt", "w+")
#  => #<File:original_file.txt>
# > File.open(original, "a") do |file|
# >     file.puts simple
# >   end
# NameError: undefined local variable or method `simple' for main:Object
#   from (irb):55:in `block in irb_binding'
#   from (irb):54:in `open'
#   from (irb):54
#   from /Users/kevinmircovich/.rvm/rubies/ruby-2.0.0-p451/bin/irb:12:in `<main>'
# > simple = File.read(sample)
#  => "another example of writing to a file.\nHere we are with a new line of textWriting to files in Ruby is simple."
# > File.open(original, "a") do |file|
# >     file.puts simple
# >   end
#  => nil
# > File.read(original)
#  => "another example of writing to a file.\nHere we are with a new line of textWriting to files in Ruby is simple.\n"
# > File.supperclass
# NoMethodError: undefined method `supperclass' for File:Class
#   from (irb):62
#   from /Users/kevinmircovich/.rvm/rubies/ruby-2.0.0-p451/bin/irb:12:in `<main>'
# > File.superclass
#  => IO
# > $stdout
#  => #<IO:<STDOUT>>
# > $stdin
#  => #<IO:<STDIN>>
# > $stderr
#  => #<IO:<STDERR>>
# > require 'pathname'
#  => true