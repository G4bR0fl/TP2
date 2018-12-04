require_relative "Function"
=begin
    Calcula o valor de X a partir da equacao dada;
    Inicializado com as contantes.
=end
class Z < Function
  def run(xn, yn, zn)

    def Z(yn, zn)
      resp = (-yn/@constant[:g]) - (@constant[:RL] * zn * (1/@constant[:g]))
      return resp
    end

    @z = zn + (@constant[:h] * Z(yn, zn) )

    return @z 
  end
end
