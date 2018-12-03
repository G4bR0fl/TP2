require_relative "Function"
=begin
    Calcula o valor de X a partir da equacao dada;
    Inicializado com as contantes.
=end
class Y < Function
  def run(xn, yn, zn)

    @y = yn + (@constant[:h]*(@constant[:a]*(-yn+xn)*(1/@constant[:b2]) + (zn*(1/@constant[:b2]) - 1)))
    
    return @y

  end
end
