REQUIRED_BAG_SIZE = 10

available_clubs = [
  :two_iron,
  :three_iron,
  :four_iron,
  :five_iron,
  :six_iron,
  :seven_iron,
  :eight_iron,
  :nine_iron,
  :pitching_wedge,
  :sand_wedge,
  :driver,
  :three_wood,
  :five_wood,
  :seven_wood,
  :putter
]

possible_club_selections = available_clubs.sample(REQUIRED_BAG_SIZE)

# YOUR CODE GOES BELOW
puts "***Automated Golf Club Advice:***"

possible_club_selections.each do |club|
  puts "Use the #{club.to_s.gsub("_"," ")}!"
end

puts

available_clubs.each do |club|
  if !possible_club_selections.include?(club) &&
  (club.to_s == "pitching_wedge" || club.to_s == "putter" ||
  club.to_s == "driver")
    puts "WARNIG! You will be without #{club.to_s.gsub("_"," ")}"
  end

end
