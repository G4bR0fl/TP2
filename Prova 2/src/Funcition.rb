=begin
    constant = [a, b1, b2, g, RL]
    initial = [x0, y0, z0]
=end

class Function
    def initialize(constant=[], initial=[])
        @initial = initial
        @constant = constant
    end
end