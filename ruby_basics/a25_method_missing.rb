# usado quando o metodo não é encontrado, chama o missing por padrão
class Fish
  def method_missing(method_name)
    puts "Fish don't have #{method_name} behavior"
  end

  def swim
    puts 'Fish is swimming'
  end
end

fish = Fish.new
fish.swim
fish.walk
