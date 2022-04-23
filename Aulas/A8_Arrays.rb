#?  ARRAY

my_array = [1,2,3,4,5,6]
my_estados = []

# PUSH elementos no final
puts "---push---"
my_estados.push("PE")
my_estados.push("PB","RN")
p my_estados
puts nil

# INSERT insere na posição especificada
puts "---insert---"
my_estados.insert(0, "AC", "AP")
p my_estados
puts nil

# Acessando e alterando
puts "---alterar---"
my_estados[2] = "RO"
puts nil

#Intervalos
puts "---interval---"
p my_estados[0..2]
puts nil

#Intervalos ao contrario
puts "---reverse get---"
p my_estados[-1]
p my_estados[-3..-1]
puts nil

# pegando primeiro e ultimo
puts "---first last---"
print "primeiro => ", my_estados.first
p my_estados.last
puts nil

# Verifica se esta vazio ou não, por ser boolean precisa de ?
puts "---empty---"
p my_estados.empty?
p !my_estados.empty?
puts nil

# Verifica se o array inclui
puts "---includes---"
p my_estados.include?("PE")
p my_estados.include?("SC")
puts nil

# deletar item do array, retorna o deletado
puts "---DELETAR---"
p my_estados
p my_estados.delete_at(0)
p my_estados
puts nil

# POP e shift podem receber numero inteiro para excluir essa quantidade de itens
p my_estados.pop
p my_estados
p my_estados.shift
p my_estados
p my_estados

