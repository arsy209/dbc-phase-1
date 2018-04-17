class Cookie
  attr_accessor :cookie_status

  def initialize(args={})
    @cookie_status = :doughy
    @in_oven = false
    @increment = 1
    @cooked_level = 1
  end

  def bake
    status_arr = [:doughy,:almost_ready,:ready, :burned]
    if in_oven
      unless cookie_status == :burned
        if cooked_level%increment == 0
           num = 1
        else
           num = 0
        end
        self.cookie_status= status_arr[status_arr.index(cookie_status)+(num)]
        self.cooked_level= cooked_level + 1
      end
    end
 end

  def put_in_oven
      self.in_oven = true if !is_in_oven?
  end

  def take_out_oven
      self.in_oven = false if is_in_oven?
  end

  def check_status
      cookie_status
  end

  def is_in_oven?
      in_oven
  end
private
attr_accessor :in_oven, :cooked_level, :increment
end
