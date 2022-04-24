# não precisa da extenção

# ! leva em conta de onde esta o usuario
# require './a15a_require'
# ou
# ! leva em conta onde esta o arquivo executado
require_relative 'a15a_require'

# a ordem do require pode importar a depeder da ordem em que as variaveis são chamadas

animal = Animal.new

animal.pular
