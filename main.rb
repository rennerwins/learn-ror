dial_book = {
  "newyork" => "212"
}

def get_city_name(somehash) 
  somehash.keys
end

loop do
  puts "Do you want to lookup an area code based on a city name? (Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
end