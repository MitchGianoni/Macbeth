require_relative "macduff.rb"

macbeth = File.open("macbeth[2].txt")
counting = MacDuff.new(macbeth.read).evaluate
macbeth.close
puts "#{counting[1][0]} is the second most common word in Macbeth at a count of #{counting[1][1]} appearances"
