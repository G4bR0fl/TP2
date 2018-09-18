require 'test/unit'
require 'time'
require_relative "../src/Sector"
require_relative "../src/Employee"

class SectorTest < Test::Unit::TestCase 
  def setup
    @x = Sector.new('Finanças', ['Administrador', 'Contador', 'Economista'])
    @y = Sector.new('Marketing', ['Comunicador social', 'Administrador', 'Mercadólogo'])
    @check1 = ""
    @check2 = 'mercadologist'
  end

  def test_Sector_count
    assert_equal(2, Sector.get_quantity_Sectors())
    assert_instance_of( Sector, @x)
    assert_instance_of( Sector, @y)
    assert_equal(1, @x.get_sector_id())
    assert_equal(2, @y.get_sector_id())
  end

  def test_get_profession
    assert_equal("Administrador", @x.get_allowed_professions().at(0))
    assert_equal(['Comunicador social', 'Administrador', 'Mercadólogo'], @y.get_allowed_professions())
  end

  # ATENÇÂO!!! TESTES QUE ENVOLVEM Employee FORAM COMENTADOS 
  #def test_check_employee
  #  assert_equal(true, @x.check_employee(@x))
  #  assert_equal(true, @y.check_employee(@y))
  #end

  #def test_get_director_id
  #  assert_equal(1, @x.get_director_id())
  #  assert_equal(2, @y.get_director_id())
  #end

  def test_get_sector
    assert_equal("Finanças", @x.get_sector_name())
    assert_equal("Marketing", @y.get_sector_name())
  end
  


  
  #def test_add_employee
  #  assert_equal(@x, @x.add_employee(@x))
  #  assert_equal(@y, @y.add_employee(@y))
  #end
  
  #def test_set_director 
  #  assert_equal("Sector director", @x.set_director(@x, 1))
  #  assert_equal("Operations director", @y.set_director(@y, 2))
  #end

  #######################
  # Still need to figure out how to print employees properly. 
  #
  # def test_get_employee_amount
  #   assert_equal(1, @x.get_employee_amount())
  #   assert_equal(2, @y.get_employee_amount())
  # end
  #
  #######################
  

end