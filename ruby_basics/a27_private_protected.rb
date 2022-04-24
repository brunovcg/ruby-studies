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

# ! PROTECTED só pode ser chamado de dentro da classe e de seus filhos
class Foo2
  def call_protected(instance)
    instance.bar
  end

  protected

  def bar
    puts 'private method'
  end
end

instance1 = Foo2.new

instance2 = Foo2.new

instance1.call_protected(instance1)

instance1.call_protected(instance2)
