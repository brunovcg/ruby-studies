puts '----------------ITERAÇÕES-----------------'

# * =======================================================

# each não sobrescreve
p '----EACH----'

nomes = %w[Joãozinho Manoel Juquinha]
nome = 'Leonardo Scorza'

objeto = { bruno: 'gouveia', brenda: 'lima' }

# ! com ARRAY
# |name| é uma variavel criada nesse contexto, não pega fora do bloco
nomes.each do |nome|
  puts nome + ' sou eu'
end

puts nil

# ! com HASH
objeto.each do |key, value|
  puts "#{key} #{value}"
end

2.times { puts nil }

# * =======================================================

p '----MAP----'
#  cria um novo
# ! com ARRAY
my_array = [1, 2, 3, 4]
my_array2 = [4, 5, 6, 7]

new_array = my_array.map do |num|
  num * 2
end

p new_array
p my_array
puts nil

# colocando o ! apos o MAP, ele sobrescreve o array
puts 'map! - subtituindo'
my_array2.map! do |num|
  num * 2
end

p my_array2

2.times { puts nil }

# * =======================================================

array3 = [1, 2, 3, 4, 5, 6, 7]
array4 = [6, 7, 8, 9, 10]

p '----SELECT----'
# parece um filter
# ! com ARRAY
selection = array3.select do |num|
  num > 4
end
p selection

puts nil
# colocando o ! apos o SELECT, ele sobrescreve o array
puts 'select! - subtituindo'
p array4
array4.select! do |num|
  num > 8
end

p array4
puts nil
puts nil

# ! com HASHES

hash = { 0 => 'zero', 1 => 'um', 2 => 'dois' }
hash2 = { 3 => 'tres', 4 => 'quatro', 5 => 'cinco' }

selection_hash = hash.select do |key, _value|
  key > 0
end

puts hash
puts selection_hash

puts nil

puts 'select! - subtituindo'
puts hash2
hash2.select! do |key, _value|
  key > 3
end
puts hash2
