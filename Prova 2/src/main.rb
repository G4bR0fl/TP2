require_relative "Solution"

constant = {a: 0.9259, b1: 0.15, b2: 1.5, g: 0.1, RL: 0.002, h: 0.02}

sistema = Solution.new(constant, 100)

sistema1 = sistema.calculate(xi: 0.1, yi: 0.1, zi: 0)

sistema2 = sistema.calculate(xi: 0.1, yi: 0.1, zi: 0.1)

puts "sistema1:"
puts "x100: " + sistema1[0].to_s
puts "y100: " + sistema1[1].to_s
puts "z100: " + sistema1[2].to_s

puts "sistema2:"
puts "x100: " + sistema2[0].to_s
puts "y100: " + sistema2[1].to_s
puts "z100: " + sistema2[2].to_s

