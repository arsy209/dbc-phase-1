require_relative 'cookie'
require_relative 'chocolate_chip'

class Oven
  attr_accessor :cookie_arr, :batch_in_oven
  def initialize(cookie_arr)
    @cookie_arr =cookie_arr
    @batch_in_oven = false
  end

def put_in_oven
    self.batch_in_oven = true
    cookie_arr.map {|cookie|cookie.put_in_oven}
end

def bake
  if self.batch_in_oven = true
     cookie_arr.map {|cookie| cookie.bake}
    end
end

def gets_cookies
  cookie_arr.select{|cookie| cookie.check_status == :ready}
end


 def check_status
    cookie_arr.map {|cookie| cookie.check_status == :ready}.count(true)
 end
end