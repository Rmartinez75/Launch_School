def time_of_day(int)
  time = 2400 - int
  p time
end

time_of_day(0) 
time_of_day(-3)
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"
