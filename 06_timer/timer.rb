class Timer
  attr_accessor :seconds
  
  def initialize
    @seconds = 0
  end
  
  def time_string
    seconds = 0
    minutes = 0
    hours = 0 
    
    if @seconds >= 3600
      seconds = @seconds % 3600
      minutes = @seconds % 60 
      hours = @seconds / 3600
    elsif @seconds >= 60
      seconds = @seconds % 60
      minutes = @seconds / 60 
    else
      seconds = @seconds
    end  

    if seconds < 10
      seconds = "0" + seconds.to_s
    else
      seconds = seconds.to_s
    end
    
    if minutes < 10
      minutes = "0" + minutes.to_s
    else
      minutes = minutes.to_s
    end

    if hours < 10
      hours = "0" + hours.to_s
    else
      hours = hours.to_s
    end

    output = "#{hours}:#{minutes}:#{seconds}"
  end


end

# at this point i simultaneously found out that 
# i had to completely restructure the code 
# to pass the tests and found out that string 
# interpolation was a thing (see below)

# class Timer
#   attr_accessor :seconds

#   def initialize
#     @seconds = 0
#   end

#   def time_string
#     hours = @seconds/3600
#     remainder = @seconds%3600
#     sprintf("%02d:%02d:%02d", hours, remainder/60, remainder%60)
#   end
  
# end

