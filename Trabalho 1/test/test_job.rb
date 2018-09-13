require 'test/unit'
require 'time'
require_relative "../src/Job"

class JobTest < Test::Unit::TestCase    
    def setup
        @job_aux = Job.new("Auxiliar", 1500)
        @job_tech = Job.new("Técnico", 3000)
    end

    def test_get_name
        assert_equal("Auxiliar", @job_aux.get_name())
        assert_equal("Técnico", @job_tech.get_name())
    end

    def test_set_name
        @job_aux.set_name("Estagiário")
        @job_tech.set_name("Technician")
        assert_equal("Estagiário", @job_aux.get_name())
        assert_equal("Technician", @job_tech.get_name())
    end

    def test_get_salary
        assert_equal(1500, @job_aux.get_salary())
        assert_equal(3000, @job_tech.get_salary())
    end

    def
        @job_aux.set_salary()
        @job_tech.set_salary()
        assert_equal(2000, @job_aux.get_salary())
        assert_equal(3500, @job_tech.get_salary()) 
    end
end