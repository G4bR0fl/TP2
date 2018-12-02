require_relative "Function"

class Z < Function
  def run(xn, yn, zn)

    @z = zn + (@constant[:h]*(-yn/@constant[:g]) - (@constant[:RL] * zn * (1/@constant[:g])) ) 

    return @z 
  end
end
