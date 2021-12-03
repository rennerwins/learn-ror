dial_book = {
  "newyork" => "212",
  "edison" => "908",
  "miami" => "305",
  "orlando" => "407",
  "bangkok" => "86",
  "paris" => "344",
  "rome" => "134"
}

def get_city_name(somehash) 
  somehash.keys
end

def get_area_code(somehash, key)
  somehash[key]
end

loop do
  puts "Do you want to lookup an area code based on a city name? (Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"

  puts "Which city do you want the area code for?"
  puts get_city_name(dial_book)

  puts "Enter your selection"
  prompt = gets.chomp

  if dial_book.include?(prompt)
    puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
  else 
    puts "You entered a city name not in the dictionary"
  end
end