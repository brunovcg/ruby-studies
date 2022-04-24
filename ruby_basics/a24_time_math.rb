# ! MATH Classe para matematica
radian = 30 * (Math::PI / 180)

puts radian
puts Math::PI

# ! TIME Classe para matematica

time = Time.now

puts time
puts time.year
puts time.month
puts time.day
puts time.hour

time_format = time.strftime('%d/%m/%y')

time2 = Time.now.strftime('%d/%m/%y')

puts time_format
puts time_format == time2
