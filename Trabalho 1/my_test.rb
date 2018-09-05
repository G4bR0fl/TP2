require 'test/unit'
require 'time'
require_relative "employee"


class MyTest < Test::Unit::TestCase
    def test_ordered

        empregados = Array.new;
        empregados.push(Employee.new('Jose', 20, Time.parse('25/11/1997'), '111.111.111-00', '001', Time.parse('10/02/2005'),  1500.00, 'Programador'));
        empregados.push(Employee.new('Thiago', 19, Time.parse('7/10/1998'), '222.222.222-00', '002', Time.parse('31/11/2010'), 1200.00, 'Atendente'));
        empregados.push(Employee.new('Maria', 25, Time.parse('11/3/1993'), '333.333.333-00', '006', Time.parse('15/09/2008'), 1700.00, 'Programador'));
        empregados.push(Employee.new('Gabriel', 20, Time.parse('12/12/1997'), '444.444.444-00', '011', Time.parse('08/01/2007'), 2700.00, 'Diretor'));
        empregados.push(Employee.new('Laura', 25, Time.parse('1/11/1992'), '555.555.555-00', '021', Time.parse('23/07/2009'), 1400.00, 'Finanças'));
        empregados.push(Employee.new('Kleber', 24, Time.parse('15/3/1994'), '666.666.666-00', '031', Time.parse('17/04/2002'), 1000.00, 'Limpeza'));
      
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