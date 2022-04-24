# Por padrão os metodos são públicos

# ! PRIVATE só pode ser chamado de dentro da classe
class Foo
  def call_private
    bar
  end

  private

  def bar
    puts 'private method'
  end
end

foo = Foo.new
# foo.bar  => vai dar erro
foo.call_private

puts nil

# ! PROTECTED só pode ser chamado de dentro da classe e de suas
# ! instancias, consegue chamar via self
class Foo2
  def call_protected(instance)
    instance.bar
    # ou
    self.bar
    # ou
    bar
  end

  protected

  def bar
    puts 'protected method'
  end
end

instance1 = Foo2.new
instance2 = Foo2.new
instance1.call_protected(instance1)
# consigo chamar entre instancias
instance1.call_protected(instance2)

# intance1.bar => vai dar erro 
