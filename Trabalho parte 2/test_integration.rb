require 'test/unit'
require 'time'
# Nosso sistema
require_relative '../Trabalho 1/src/Employee.rb'
# Sistema dos colegas
require_relative '../Trabalho Colegas/src/classes/Empregado.rb'


class SystemsIntegrationTest < Test::Unit::TestCase

    def setup
        @empregado = Empregado.new
        @empregado.novoEmpregado('Kléber', 29, '10/11/1989', '012593556-24', 'auxiliar', '01/02/2016', 'designer gráfico')
    end

    def test_import
        new_employee = Employee.import_Employee(@empregado.getInfo())
        assert(new_employee.instance_of?(Employee))
        assert_equal('Kléber', new_employee.get_name())
        assert_equal('10/11/1989', new_employee.get_birth_date())
    end
end