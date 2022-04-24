# lambdas são similares aos blocks mas podem ser salvas em variáveis, e mais de 1 pode ser passada como argumento

first_lambda = lambda { puts 'my first lambda' }
second_lambda = -> { puts 'my second lambda' }
third_lambda = lambda do
  puts 'my third lambda'
end

first_lambda.call
second_lambda.call
third_lambda.call

puts nil # * =====================================================
# recebendo parametros

fourth_lambda = ->(names) { names.each { |name| puts name } }
names = %w[joão maria pedro]
# mesma coisa disso
# names = [joão, maria, pedro]
 
fourth_lambda.call(names)

puts nil # * =====================================================
# multiline

my_lambda = lambda do |numbers|
  index = 0
  puts 'Número atual + Próximo número'
  numbers.each do |number|
    break if numbers[index] == numbers.last

    puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
    puts numbers[index] + numbers[index + 1]
    index += 1
  end
end

numbers = [1, 2, 3, 4]
my_lambda.call(numbers)

puts nil # * =====================================================
# lambdas podem ser passados como argumentos metodo
# pode passar como argumento normal

def foo(teste, f_lambda, s_lambda)
  f_lambda.call(teste)
  s_lambda.call
end

first_lambda = ->(varia) { puts "my first lambda #{varia}" }
second_lambda = -> { puts 'my second lambda' }

foo('teste', first_lambda, second_lambda)
