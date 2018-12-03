require_relative "X"
require_relative "Y"
require_relative "Z"

=begin
    Possui todas as variaveis contantes => constant = [a, b1, b2, g, RL, h]
    Inicializada pelo n-esimo numero da equacao. i.e: n = 5 para achar o x5, y5 e z5
=end
class Solution
    @@constant = {a: 0.9259, b1: 0.15, b2: 1.5, g: 0.1, RL: 0.002, h: 0.02}
    
    def initialize(n)
        @n = n
    end

    def calculate(initial = Hash.new)

        x = X.new(@@constant)
        y = Y.new(@@constant)
        z = Z.new(@@constant)
        @xi = initial[:xi]
        @yi = initial[:yi]
        @zi = initial[:zi]

        for i in 1..@n
            @xn = x.run(@xi, @yi, @zi)
            @yn = y.run(@xi, @yi, @zi)
            @zn = z.run(@xi, @yi, @zi)
            @xi = @xn
            @yi = @yn
            @zi = @zn 
        end

        return @xn, @yn, @zn
    end
end