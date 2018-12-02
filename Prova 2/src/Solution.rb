require_relative "X"
require_relative "Y"
require_relative "Z"

class Solution
    def initialize(constant = Hash.new, n)
        @constant = constant
        @n = n
    end

    def calculate(initial = Hash.new)
        x = X.new(@constant)
        y = Y.new(@constant)
        z = Z.new(@constant)
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