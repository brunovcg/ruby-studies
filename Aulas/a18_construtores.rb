# Construtores usam a palavra initialize
class Car
  def initialize(marca, cvs)
    @marca = marca
    @cvs = cvs
  end

  def check
    puts 'Instância da classe iniciada com os valores:'
    puts "marca= #{@marca}"
    puts "cvs= #{@cvs}"
  end
end

carrinho = Car.new('chev', 120)
carrinho.check
