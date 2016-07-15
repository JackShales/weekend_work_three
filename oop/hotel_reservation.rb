# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end

# Write your own driver code below! Make sure your code tests the following:

# The ability to change a room number even after a reservation has already been created
puts "Testing room_number functionality..."
puts

res1 = HotelReservation.new(customer_name: "John", 
                            date: {month: 7, day: 15, year: 2016},
                            room_number: 514
                           )

puts "The originial reservation is for room #{res1.room_number}. The guest wants room 614."
puts

res1.room_number = 614

if res1.room_number == 614
  puts "PASS, room_number attr_accessor functional"
else
  puts "FAIL, room_number attr_accessor not functional"
end

# The add_a_fridge method

puts
puts "Testing add_a_fridge..."
puts

res1.add_a_fridge

if res1.amenities.include? "fridge"
  puts "PASS, fridge added!"
else
  puts "FAIL, no fridge detected."
end

# The add_a_crib method

puts
puts "Testing add_a_crib..."
puts

res1.add_a_crib

if res1.amenities.include? "crib"
  puts "PASS, crib added!"
else
  puts "FAIL, no crib detected."
end

# The add_a_custom_amenity method

puts
puts "Testing add_a_custom_amenity..."
puts

res1.add_a_custom_amenity("cot")

if res1.amenities.include? "cot"
  puts "PASS, custom amenity added!"
else
  puts "FAIL, no custom amenity detected."
end

