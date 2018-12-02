require_relative "Solution"

# calcular o sistema com n iteracoes
sistema = Solution.new(100)
# calcula o sistema1: valores x0: 0.1, y0: 0.1 e z0: 0
sistema1 = sistema.calculate(xi: 0.1, yi: 0.1, zi: 0)
# calcula o sistema1: valores x0: 0.1, y0: 0.1 e z0: 0.1
sistema2 = sistema.calculate(xi: 0.1, yi: 0.1, zi: 0.1)

puts "sistema1:"
puts "x100: " + sistema1[0].to_s
puts "y100: " + sistema1[1].to_s
puts "z100: " + sistema1[2].to_s

puts "sistema2:"
puts "x100: " + sistema2[0].to_s
puts "y100: " + sistema2[1].to_s
puts "z100: " + sistema2[2].to_s

puts "comparacao entre z100 (sistema1 - sistema2): " + (sistema1[2] - sistema2[2]).to_s

