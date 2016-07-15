# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

class Tv
  attr_accessor :power, :volume, :channel
  def initialize
    @power = false
    @volume = 0
    @channel = 1
  end
end

class Remote
  def initialize(tv)
    @tv = tv
  end

  def toggle_power
    @tv.power = !@tv.power
  end

  def increment_volume
    @tv.volume = @tv.volume + 1
  end

  def decrement_volume
    @tv.volume = @tv.volume - 1
  end

  def change_channel(channel)
    @tv.channel = channel
  end
end

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

tv = Tv.new
remote = Remote.new(tv)

puts
puts "Testing power, remote triggered..."

remote.toggle_power
puts

if tv.power == true
  puts "PASS, TV on"
else
  puts "FAIL, TV still off"
end

puts
puts "Testing volume control..."
puts

15.times do 
  remote.increment_volume
end

if tv.volume == 15
  puts "PASS, tv increased volume to 15"
else
  puts "FAIL"
end

puts
puts "Now for decreasing volume..."
puts

10.times do 
  remote.decrement_volume
end

if tv.volume == 5
  puts "PASS, tv decreased volume to 5"
else
  puts "FAIL"
end

puts
puts "Testing channel changer..."
puts

remote.change_channel(652)

if tv.channel == 652
  puts "PASS, channel changed to 652"
else
  puts "FAIL"
end
