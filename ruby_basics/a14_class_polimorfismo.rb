# isso é uma classe
class Instrumento
  def escrever
    puts 'Escrevendo'
  end
end

# aqui esta sobrescrevendo
class Lapis < Instrumento
  def escrever
    puts 'Escrevendo à Lápis'
  end
end

class Teclado < Instrumento
end

# usando super somente é desnecessária. Já que adicionei outra instrução, juntou ambas
class Pena < Instrumento
  def escrever
    puts 'pena escrita'
    super
  end
end

# aqui esta sobrescrevendo
class Caneta < Instrumento
  def escrever
    puts 'Escrevendo à Caneta'
  end
end

instrumentos = [Lapis.new, Caneta.new, Teclado.new, Pena.new]
# Chamamos o método escrever pra qualquer instrumento
instrumentos.each do |instrumento|
  instrumento.escrever
end
