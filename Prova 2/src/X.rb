require_relative "Function"
=begin
    Calcula o valor de X a partir da equacao dada;
    Inicializado com as contantes.
=end
class X < Function
    def run(xn, yn, zn)
        def f(xn)
            @f_const = {m0: 0.7879, m1:-1.4357, Bp:1}
            resp = @f_const[:m0] * xn + 0.5 * (@f_const[:m1] - @f_const[:m0]) * ((xn + @f_const[:Bp]).abs - (xn - @f_const[:Bp]).abs)
            return resp
        end

        @x = xn + (@constant[:h] * (@constant[:a]*(yn-xn) * (1/@constant[:b1]) - (f(xn)*1/@constant[:b1])))

        return @x
    end

end
