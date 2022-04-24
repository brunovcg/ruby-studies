# A variável self aponta para o Objeto onde ela se encontra
class Foo
  attr_accessor :teste

  def bar
    puts self
  end
end

foo = Foo.new
puts foo
foo.bar

# Com o self é possível criar métodos de classe, que não precisam de uma instância para serem chamados.
# Equivale ao Static Method
class Foo2
  def self.bar
    puts self
  end
end

Foo2.bar

# Pode utilizá-lo para se referir a atributos do objeto atual.
# nesse caso não precisa do self
class Pen
  attr_accessor :color

  def pen_color
    puts "The color is #{self.color}"
    puts "The color is #{color}"
    puts "The color is #{@color}"
  end
end

pen = Pen.new
pen.color = 'blue'
pen.pen_color
