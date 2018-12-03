require_relative "../src/Solution"
require "test/unit"

class TestSimpleNumber < Test::Unit::TestCase

  def setup
    @constant = {a: 0.9259, b1: 0.15, b2: 1.5, g: 0.1, RL: 0.002, h: 0.02}
    @x = X.new(@constant)
    @y = Y.new(@constant)
    @z = Z.new(@constant)
  end
  
  def test_system1
    assert_equal(0.11914266666666669, @x.run(0.1, 0.1, 0.0))
    assert_equal(0.08, @y.run(0.1, 0.1, 0.0))
    assert_equal(-0.02, @z.run(0.1, 0.1, 0.0))

  end
  
  def test_system2
    assert_equal(0.11914266666666669, @x.run(0.1, 0.1, 0.1))
    assert_equal(0.08133333333333334, @y.run(0.1, 0.1, 0.1))
    assert_equal(0.07800000000000001, @z.run(0.1, 0.1, 0.1))
  end
end