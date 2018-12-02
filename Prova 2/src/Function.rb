=begin
    constant = [a, b1, b2, g, RL]
    initial = [x0, y0, z0]
=end

class Function
  # Esse attr_accessor cria metodos setters e getters pras variáveis de dentro do initialize
  attr_accessor :constant, :initial

  def initialize(constant = Hash.new, initial = Hash.new)
    @initial = initial
    @constant = constant
    # Dando push nas constantes pra Hash, sem valores definidos
    @constant = {a: nil, b1: nil, b2: nil, g: nil, RL: nil}
    @initial = {x0: nil, y0: nil, z0: nil}
  end
end