# ? Hashes
capitais = {}
# ou
capitais2 = {}
# ou
# as keys aceitam numeros e symbols, se usar tipo JSON o : tem que ser colado
capitais3 = { :a => 'a', 0 => '1' }
capitais4 = { c: 'c', 1 => 1, 'd': 'd' }

p capitais4
puts nil

# Inserindo novo valor
puts '---Inserir---'
capitais[:mg] = 'BH'
capitais[:pe] = 'REC'
p capitais
puts nil

# Volta array de Keys ou Values
puts '---Pegar---'
p capitais.keys
p capitais.values

# Verificando a chave
p capitais.keys[0] == :mg
p capitais.keys[0] == :cl
p :mg.class
puts nil

# deletando
puts '---DELETE---'
p capitais
p capitais.delete(:pe)
p capitais
puts nil

# mais info, length = size
puts '---INFOS---'
p capitais.size
p capitais.length
p capitais.empty?
puts nil
