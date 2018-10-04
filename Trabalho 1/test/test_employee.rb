require 'test/unit'
require 'time'
require_relative "../src/Employee"
require_relative "../src/Job"

# Unit tests for Employee
class EmployeeUnitTest < Test::Unit::TestCase
    def setup
        @employee_1 = Employee.new(name: 'Jose', birth_date: Time.parse('25/03/1997'), cpf: '111.111.111-00', join_date: Time.parse('10/02/2005'), bonus: 350.00)
        @employee_2 = Employee.new( name: 'Thiago', birth_date: Time.parse('07/07/1998'), cpf: '222.222.222-00', join_date: Time.parse('31/11/2010'), bonus: 350.00)
        @employee_3 = Employee.new( name: 'Amanda', birth_date: Time.parse('20/09/1994'), cpf: '333.333.333-00', join_date: Time.parse('20/02/2003'), bonus: 500.00)
    end

    def test_get_name
        assert_equal('Jose', @employee_1.get_name())
        assert_equal('Thiago', @employee_2.get_name())
    end

    def test_get_age
        assert_equal(21, @employee_1.get_age())
        assert_equal(20, @employee_2.get_age())
        assert_equal(24, @employee_3.get_age())
    end

    
    def test_get_birth_date
        assert_equal('25/03/1997', @employee_1.get_birth_date())
        assert_equal('07/07/1998', @employee_2.get_birth_date())
    end

    def test_get_cpf
        assert_equal('111.111.111-00', @employee_1.get_cpf())
        assert_equal('222.222.222-00', @employee_2.get_cpf())
    end
    
    def test_get_join_date
        assert_equal(Time.parse('10/02/2005'), @employee_1.get_join_date())
        assert_equal(Time.parse('31/11/2010'), @employee_2.get_join_date())
    end
end

# Integration Tests with Employee
class TestIntegrationTest < Test::Unit::TestCase
    def setup
        @job_1 = Job.new('Auxiliar', 1500)
        @job_2 = Job.new('Tecnico', 3000)
        @employee_1 = Employee.new(name: 'Jose', birth_date: Time.parse('25/03/1997'), cpf: '111.111.111-00', join_date: Time.parse('10/02/2005'), bonus: 350.00, role: @job_1, formation:["Administrador", "Gestor de Pessoas"])
        @employee_2 = Employee.new( name: 'Thiago', birth_date: Time.parse('07/07/1998'), cpf: '222.222.222-00', join_date: Time.parse('31/11/2010'), bonus: 350.00, role: @job_2, formation:["Programador", "Direito"])
        @employee_3 = Employee.new( name: 'Amanda', birth_date: Time.parse('20/09/1994'), cpf: '333.333.333-00', join_date: Time.parse('20/02/2003'), bonus: 500.00, role: @job_1, formation:[])
    end

    def test_get_salary
        assert_equal(1850, @employee_1.get_salary())
        assert_equal(3350, @employee_2.get_salary())
        assert_equal(2000, @employee_3.get_salary())
    end

    def test_set_salary
        @employee_1.set_bonus(700)
        @employee_2.set_bonus(1000)
        assert_equal(2200, @employee_1.get_salary())
        assert_equal(4000, @employee_2.get_salary())
        assert_equal(2000, @employee_3.get_salary())
    end

    def test_get_Job
        assert_equal(@job_1, @employee_1.get_Job())
        assert_equal(@job_2, @employee_2.get_Job())
    end

    def test_get_role
        assert_equal('Auxiliar', @employee_1.get_role())
        assert_equal('Tecnico', @employee_2.get_role())
    end

    def test_set_role
        @employee_1.set_Job(@job_2)
        assert_equal(@job_2, @employee_1.get_Job())
        
        # Error
        assert_raise ArgumentError do
            @employee_2.set_Job("Batata")
        end
    end

    def test_get_formation
        assert_equal(["Administrador", "Gestor de Pessoas"], @employee_1.get_formation())
        assert_equal(["Programador", "Direito"], @employee_2.get_formation())
        assert_equal([], @employee_3.get_formation())
    end
end
