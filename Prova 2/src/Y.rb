require_relative "Function"

class Y < Function
  def run(xn, yn, zn)

    @y = yn + (@constant[:h]*(@constant[:a]*(-yn+xn)*(1/@constant[:b2]) + (zn*(1/@constant[:b2]) - 1)))
    
    return @y

  end
end
