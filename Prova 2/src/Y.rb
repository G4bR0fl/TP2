require_relative "Function"
=begin
    Calcula o valor de X a partir da equacao dada;
    Inicializado com as contantes.
=end
class Y < Function
  def run(xn, yn, zn)

    def Y(xn, yn, zn)
      resp = (@constant[:a]*(-yn+xn)*(1/@constant[:b2])) + (zn*(1/@constant[:b2]))
      return resp
    end

    @y = yn + (@constant[:h]* Y(xn, yn, zn))
    
    return @y

  end
end
