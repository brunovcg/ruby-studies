# Atributos são privados, so podem ser acessados pelos metodos da classe

class Dog
  # equivale a um getter
  def name
    @name
  end

  # equivale a um setter
  def name=(name)
    @name = name
  end
end

dog = Dog.new
dog.name = "Bidu"
puts dog.name

# OU

# attr_acessor = get and set
# attr_read = somente get
# attr_write = somente set

class Cat
  attr_accessor :name, :age
end
cat = Cat.new
cat.name = 'kaka'
puts cat.name

cat.age = 7
puts cat.age