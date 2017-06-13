class Car
  attr_accessor :brand, :current_speed, :max_speed

  def initialize(brand, current_speed, max_speed)
    @brand = brand || 'unknown'
    @current_speed = current_speed || 0
    @max_speed = max_speed || 0
  end

  def accelerate
    if @current_speed
      @current_speed += 1
    else
      @current_speed = 1
    end
  end

  def drive
    puts 'driving!'

    until @current_speed == @max_speed
      accelerate
      puts 'current speed is ' + @current_speed.to_s
    end

    puts 'max speed reached'
  end
end
