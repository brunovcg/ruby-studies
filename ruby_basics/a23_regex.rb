# * /expressao/
# ou
# * %r{expressao}
# ou
# * Regexp.new('expressao')

# ! Operador =~
string = 'ruby on rails'
# O operador =~ retorna o offset, ou seja, a distância entre 
# o começo da string até o local onde ocorre o casamento de padrão especificado na expressão.
p /by/ =~ string

# ! match
# retorna a plavra se existir ou nill se não
phrase = 'Hello, how are you?'
match_data = /how/.match(phrase)

p match_data

# ! Metacharacters and Escapes
# Alguns caracteres precisa da barra antes
puts /\?/.match('Tudo bem?')
 
puts /bem\!\!\!/.match('Muito bem!!!')

# ! Character Classes
# É uma lista que informa quais caracteres devem aparecer em um ponto do casamento.

puts /[t]exto/.match('texto começando com t')

puts /[1-5]/.match('123')

puts /[a-z]/.match('Oi')

puts /A\d/.match('A4')

# ! Repetion
# É possível definir a repetição de um mesmo padrão, evitando escrever a mesma coisa diversas vezes.
puts "A343".match(/[A-Z]\d{3}/)
puts "BBB AAAA".match(/A{3,}/)
