# Isola uma logica, aqui por exemplo isola um metodo puts
# para não confitar com o puts geral
module ReverseWorld
  def self.puts(text)
    print text.reverse.to_s
  end
end

ReverseWorld.puts 'O resultado é'
# ou
ReverseWorld::puts 'O resultado é'

puts nil

# colocando uma classe
module MyTest
  def self.puts(text)
    print text.upcase
  end

  # uma classe
  class Imprimir
    def call(text)
      puts text
      puts '---x---'
    end
  end
end

imprimir = MyTest::Imprimir.new

imprimir.call('test')

puts nil

MyTest.puts('Aumentar texto')
