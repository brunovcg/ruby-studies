class Computer
  def turn_on
    'turned on'
  end

  def turn_off
    'turned off'
  end
end

my_mac = Computer.new
puts my_mac.turn_on
puts my_mac.turn_off

puts nil
puts nil

class Animal
  def pular
    puts 'toin oin oin'
  end

  def dormir
    puts 'zzZZzzZZz'
  end
end

# extends aqui usa-se <
class Cachorro < Animal
  def latir
    puts 'au au au'
  end
end

doguinho = Cachorro.new
doguinho.pular
doguinho.dormir
doguinho.latir
