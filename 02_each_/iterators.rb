weekdays = [ "monday", "tuesday", "wednesday", "thursday", "friday"]

weekdays.each do |d|
  puts d.capitalize
end

weekdays.each { |d| puts d.upcase }