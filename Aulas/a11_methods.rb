# ? Equivalente a Funções
def hello(name)
  puts "Olá #{name}"
end

def hello_world
  puts 'Hello world'
end

def signal(color = 'vermelho')
  puts "a cor é #{color}"
end

# ! o return é implicito, só usar quando for sozinho para parar a func
def returned_without_return(num1, num2)
  "a soma é essa: #{num1 + num2}"
end

abc = returned_without_return(1, 2)

# se não tem parametro, não precisa de ()
hello_world
hello('bruno')
signal
puts(abc)
