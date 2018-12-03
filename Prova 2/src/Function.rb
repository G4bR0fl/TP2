=begin
    constant = [a, b1, b2, g, RL, h]
=end

class Function
  # Esse attr_accessor cria metodos setters e getters pras variáveis de dentro do initialize
  attr_accessor :constant, :initial

  def initialize(constant = Hash.new)
    @constant = constant
  end
end

