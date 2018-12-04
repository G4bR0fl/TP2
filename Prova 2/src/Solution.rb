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

        @xn = Array.new
        @yn = Array.new
        @zn = Array.new

        @xn.push(initial[:xn])
        @yn.push(initial[:yn])
        @zn.push(initial[:zn])

        for i in 1...@n
            if (i==1)
                @xn.push(x.run(@xn[0].to_f, @yn[0].to_f, @zn[0].to_f))
                @yn.push(y.run(@xn[0].to_f, @yn[0].to_f, @zn[0].to_f))
                @zn.push(z.run(@xn[0].to_f, @yn[0].to_f, @zn[0].to_f))
            else
                @xn.push(x.run(@xn[i-1], @yn[i-1], @zn[i-1]))
                @yn.push(y.run(@xn[i-1], @yn[i-1], @zn[i-1]))
                @zn.push(z.run(@xn[i-1], @yn[i-1], @zn[i-1]))
            end    
        end
        return @xn[@n-1], @yn[@n-1], @zn[@n-1]
    end
end