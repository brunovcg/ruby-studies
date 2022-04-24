# ? FOR

fruits = %w[maça uva morango]

for fruit in fruits
  puts fruit
end

# ? While

x = 1

while x <= 10
  puts x
  x += 1
end

puts '-----x-----'

# ? DO WHILE ou LOOP
c = 11
loop do
  puts c
  c += 1
  break if c > 20
end

puts '-----x-----'

# ? Times
# * tem que por valor inteiro
10.times do
  puts 'hello'
end

# system "clear" # isso limpa o console
