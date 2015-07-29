time_now = Time.new
puts time_now.to_s

future_time = Time.new(2015, 8, 19)
puts future_time.to_s

time_until = future_time - time_now
puts time_until

days_until = time_until / 60 / 60 / 24
puts days_until.floor

months_until = time_until / 60 / 60 / 24 / 30
puts months_until