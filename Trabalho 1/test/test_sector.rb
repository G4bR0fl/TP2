require 'test/unit'
require 'time'
require_relative "../src/Sector"
require_relative "../src/Employee"


#  Defines Unit tests for Sector class.
class SectorUnitTest < Test::Unit::TestCase 
  def setup
    @x = Sector.new('Finanças', ['Administrador', 'Contador', 'Economista'])
    @y = Sector.new('Marketing', ['Comunicador social', 'Administrador', 'Mercadólogo'])
  end

  def test_get_sector
    assert_equal("Finanças", @x.get_sector_name())
    assert_equal("Marketing", @y.get_sector_name())
  end

  def test_set_sector_name
    @x.set_sector_name("Setor Teste")
    @y.set_sector_name("Novo Setor")
    assert_equal("Setor Teste", @x.get_sector_name())
    assert_equal("Novo Setor", @y.get_sector_name())
  end

  def test_get_profession
    assert_equal("Administrador", @x.get_allowed_professions().at(0))
    assert_equal(['Comunicador social', 'Administrador', 'Mercadólogo'], @y.get_allowed_professions())
  end

  def test_add_profession
    @x.add_allowed_profession("Estatístico")
    @y.add_allowed_profession("Youtuber", "Digital Influencer")
    assert_equal(['Administrador', 'Contador', 'Economista', 'Estatístico'], @x.get_allowed_professions())
    assert_equal(5, @y.get_allowed_professions().size)
  end

  def test_rm_profession
    @x.rm_allowed_profession('Administrador')
    @y.rm_allowed_profession('Comunicador social')
    assert_equal(['Contador', 'Economista'], @x.get_allowed_professions())
    assert_not_equal(['Comunicador social', 'Administrador', 'Mercadólogo'], @y.get_allowed_professions())
  end
end

# Defines integration tests between Sector and Employee.
class SectorIntegrationTest < Test::Unit::TestCase
  def setup
    @x = Sector.new('Finanças', ['Administrador', 'Contador', 'Economista'])
    @y = Sector.new('Marketing', ['Comunicador social','Mercadólogo'])
    @employee_1 = Employee.new(name: 'Jose', birth_date: Time.parse('25/11/1997'), cpf: '111.111.111-00', join_date: Time.parse('10/02/2005'), formation:["Administrador", "Gestor de Pessoas"])
  end

  def test_check_employee
    assert_equal(true, @x.check_employee(@employee_1))
    assert_equal(false, @y.check_employee(@employee_1))
  end

  def test_add_employee
    # Should add employee
    assert_equal(0, @x.get_employee_amount())
    assert_equal(nil, @employee_1.get_sector())
    r = @x.add_employee(@employee_1)
    assert_equal(true, r)
    assert_equal(1, @x.get_employee_amount())
    assert_equal(@x, @employee_1.get_sector())

    #Should not add employee
    r = @y.add_employee(@employee_1)
    assert_equal(false, r)

    # Very bad error
    assert_raise RuntimeError do
      @x.add_employee(@y)
    end
  end

  def test_rm_employee
    # Should remove
    @x.add_employee(@employee_1)
    @x.rm_employee(@employee_1)    
    assert_equal(0, @x.get_employee_amount())
    assert_equal(nil, @employee_1.get_sector())

    # Bad error
    assert_raise RuntimeError do
      @x.rm_employee(@y)
    end
  end

  def test_set_director
    # Correct operation
    assert_equal(nil, @x.get_director())
    @x.set_director(@employee_1)
    assert_equal(@employee_1, @x.get_director())

    # Error
    assert_raise RuntimeError do
      @x.set_director("Batata")
    end
  end
end