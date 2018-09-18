require 'test/unit'
require 'time'
require_relative "../src/Sector"

class SectorTest < Test::Unit::TestCase 
  def setup
    @x = Sector.new('tecnologia', 'administrator', 1, 4)
    @y = Sector.new('marketing', 'mercadologist', 2, 3)
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
  
  def test_get_sector_id
    assert_equal(4, @x.get_sector_id())
    assert_equal(3, @y.get_sector_id())
  end

  
  def test_add_employee
    assert_equal(@x, @x.add_employee(@x))
    assert_equal(@y, @y.add_employee(@y))
  end
  
  def test_set_director 
    assert_equal("Sector director", @x.set_director(@x, 1))
    assert_equal("Operations director", @y.set_director(@y, 2))
  end

  #######################
  # Still need to figure out how to print employees properly. 

  # def test_get_employee_amount
  #   assert_equal(1, @x.get_employee_amount())
  #   assert_equal(2, @y.get_employee_amount())
  # end
  
  #######################
  

end