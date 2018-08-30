require 'test/unit'
require_relative "employee"

class MyTest < Test::Unit::TestCase



    def test_ordered

        empregados = Array.new;
        empregados.push(Employee.new('Jose', 20, '25/11/1997', 1500.00, 'Programador'));
        empregados.push(Employee.new('Thiago', 19, '7/10/1998', 1200.00, 'Atendente'));
        empregados.push(Employee.new('Maria', 25, '11/3/1993', 1700.00, 'Programador'));
        empregados.push(Employee.new('Gabriel', 20, '12/12/1997', 2700.00, 'Diretor'));
        empregados.push(Employee.new('Laura', 25, '1/11/1992', 1400.00, 'Finanças'));
        empregados.push(Employee.new('Kleber', 24, '15/3/1994', 1000.00, 'Limpeza'));

        ok = true;
        n = empregados.length;

        Employee_sort(empregados);

        for i in 1...n do
            if(empregados[i].get_age < empregados[i-1].get_age)
                ok = false;
                break;
            end
        end
        assert(ok, 'UNORDERED');
    end
end