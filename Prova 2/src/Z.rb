require_relative "Function"
=begin
    Calcula o valor de X a partir da equacao dada;
    Inicializado com as contantes.
=end
class Z < Function
  def run(xn, yn, zn)

    @z = zn + (@constant[:h]*(-yn/@constant[:g]) - (@constant[:RL] * zn * (1/@constant[:g])) ) 

    return @z 
  end
end
