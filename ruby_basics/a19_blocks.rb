# entendido como uma função anônima
# definido entre do..end ou colchetes
# so pode passar 1 bloco por metodo

5.times { puts 'Exec the block' }

sum = 0
numbers = [5, 10, 5]
numbers.each { |number| sum += number }
puts sum

puts nil
# * =====================================================
puts '---'

foo = { 2 => 3, 4 => 5 }

foo.each do |key, value|
  puts "key = #{key}"
  puts "value = #{value}"
  puts "key * value = #{key * value}"
  puts '---'
end

puts nil
# * =====================================================

def foo2
  # Call the block
  yield
  yield
end

foo2 { puts 'Exec the block' }

puts nil

foo2 do
  puts 'usando do end'
end

puts nil
# * =====================================================

def foo4
  if block_given?
    # Call the block
    yield
  else
    puts 'Sem parâmetro do tipo bloco'
  end
end
foo4
foo4 { puts 'Com parâmetro do tipo bloco' }

puts nil
# * =====================================================
# Outra forma de receber blocos como parâmetro é utilizar o símbolo &

def foo5(name, &block)
  @name = name
  block.call
end

foo5('Leonardo') { puts "Hello #{@name}" }

puts nil
# * =====================================================
#  também pode passar um bloco que ocupa várias linhas como parâmetro

def foo6(numbers, &block)
  if block_given?
    numbers.each do |key, value|
      block.call(key, value)
    end
  end
end

numbers = { 2 => 2, 3 => 3, 4 => 4 }

foo6(numbers) do |key, value|
  puts "#{key} * #{value} = #{key * value}"
  puts "#{key} + #{value} = #{key + value}"
  puts "---"
end
