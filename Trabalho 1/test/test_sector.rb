require 'test/unit'
require 'time'
require_relative "../src/Sector"

class SectorTest < Test::Unit::TestCase 
  def setup
    @x = Sector.new('tecnologia', 'administrator', 1, 'sector director')
    @y = Sector.new('marketing', 'mercadologist', 2, 'executive director')
    @check1 = 'administrator'
    @check2 = 'mercadologist'
  end

  def test_check_employee
    assert_equal(true, @x.check_employee(@x))
    assert_equal(true, @y.check_employee(@y))
  end

  def test_get_profession
    assert_equal("administrator", @x.get_profession())
    assert_equal("mercadologist", @y.get_profession())
  end

  def test_get_director_id
    assert_equal(1, @x.get_director_id())
    assert_equal(2, @y.get_director_id())
  end

  def test_get_sector
    assert_equal("tecnologia", @x.get_sector())
    assert_equal("marketing", @y.get_sector())
  end
  ##############
  # def test_add_employee # Need to see if the parameters are right
    
  # end

  # def test_set_director # Need to see if it's fully functional and what's missing

  # end
  ##############

end