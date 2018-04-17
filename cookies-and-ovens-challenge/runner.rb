require_relative 'cookie'
require_relative 'oven'
require_relative 'chocolate_chip'
require_relative 'peanut_butter'

cookie_array = []

puts "The cookie bakery\n\n"
100.times do
  cookie_array<< ChocolateChip.new
  cookie_array<< PeanutButter.new
end

cookies = Oven.new(cookie_array)

cookies.put_in_oven

cookies.bake
p "There are #{cookies.check_status} cookies ready "

cookies.bake
p "There are #{cookies.check_status} cookies ready "

cookies.bake
p "There are #{cookies.check_status} cookies ready "


cookies.bake
p "There are #{cookies.check_status} cookies ready to eat nowww, come and get them"


cookies.bake
p "There are #{cookies.check_status} cookies ready to eat nowww, come and get them"

cookies.bake
p "The cookies are burned now"




cookies.gets_cookies
