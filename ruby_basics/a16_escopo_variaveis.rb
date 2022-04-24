# ? var local
# só é lida onde foi criada
# declarada com letra minuscula ou sublinhada

# ? var global
# declarada com o prefixo $
# seu uso é fortemente desencorajado

# ? var classe
# declarada com @@, pode ser acessada na classe e suas instâncias

# ? var instancia
# declarada com @, pode ser acessada na classe e NÃO por suas instâncias

puts '--local--'
# ! local
def foo
  local = 'essa varivael é local'
  puts local
end

foo

puts nil
puts '--global--'

# ! global
def foo2
  $global = 2000
end

foo2
p $global

puts nil
puts '--classe--'

# ! classe
class User
  @@count = 0
  def add(name)
    puts "user #{name} adicionado!"
    @@count += 1
    puts @@count
  end
end

jotinha = User.new
jotinha.add('jota')

jotinha2 = User.new
jotinha2.add('jota2')

puts nil
puts '--instancia--'

# ! instancia

# classe
class Cidade
  def add(name)
    @name = name
    puts 'Cidade ADD'
    hello
  end

  def hello
    puts "Seja bem vindo #{@name}"
  end
end

city = Cidade.new
city.add('Recife')
