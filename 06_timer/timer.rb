class Timer
  #write your code here
  def initialize
    @seconds = 0
  end

  attr_accessor :seconds

  def time_string
    hours = @seconds / 3600
    remainder = @seconds % 3600
    minutes = remainder / 60
    seconds = remainder % 60
    sprintf("%02d:%02d:%02d", hours, minutes, seconds)
  end
end
