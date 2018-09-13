require 'test/unit'
require 'time'
require_relative "../src/Employee"
require_relative "../src/Job"

class MyTest < Test::Unit::TestCase
    def setup
        @job_1 = Job.new('Auxiliar', 1500)
        @job_2 = Job.new('Tecnico', 3000)
        @employee_1 = Employee.new('Jose', 20, Time.parse('25/11/1997'), '111.111.111-00', '001', Time.parse('10/02/2005'),  350.00, 'Finanças', @job_1 )
        @employee_2 = Employee.new('Thiago', 19, Time.parse('7/10/1998'), '222.222.222-00', '002', Time.parse('31/11/2010'), 350.00, 'Marketing', @job_2 )
    end

    def test_get_name
        assert_equal('Jose', @employee_1.get_name())
        assert_equal('Thiago', @employee_2.get_name())
    end

    def test_get_age
        assert_equal(20, @employee_1.get_age())
        assert_equal(19, @employee_2.get_age())
    end

    
    def test_get_birth_date
        assert_equal(Time.parse('25/11/1997'), @employee_1.get_birth_date())
        assert_equal(Time.parse('7/10/1998'), @employee_2.get_birth_date())
    end

    def test_get_cpf
        assert_equal('111.111.111-00', @employee_1.get_cpf())
        assert_equal('222.222.222-00', @employee_2.get_cpf())
    end

    def test_get_identification_number
        assert_equal('001', @employee_1.get_identification_number())
        assert_equal('002', @employee_2.get_identification_number())
    end
    
    def test_get_join_date
        assert_equal(Time.parse('10/02/2005'), @employee_1.get_join_date())
        assert_equal(Time.parse('31/11/2010'), @employee_2.get_join_date())
    end
    
    def test_get_salary
        assert_equal(1850, @employee_1.get_salary())
        assert_equal(3350, @employee_2.get_salary())
    end


end
