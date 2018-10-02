require 'test/unit'
require 'time'
require_relative "../src/Employee"

class Sorted_by_ageTest < Test::Unit::TestCase 
    
    def test_ordered
        empregados = Array.new;
    
        empregados.push(Employee.new(name:'Jose', birth_date:Time.parse('25/11/1997'), cpf:'111.111.111-00', join_date:Time.parse('10/02/2005')));
        empregados.push(Employee.new(name:'Thiago',birth_date:Time.parse('7/10/1998'), cpf:'222.222.222-00', join_date:Time.parse('31/11/2010')));
        empregados.push(Employee.new(name:'Maria', birth_date:Time.parse('11/3/1993'), cpf:'333.333.333-00', join_date:Time.parse('15/09/2008')));
        empregados.push(Employee.new(name:'Gabriel', birth_date:Time.parse('12/12/1997'), cpf:'444.444.444-00', join_date:Time.parse('08/01/2007')));
        empregados.push(Employee.new(name:'Laura', birth_date:Time.parse('1/11/1992'), cpf:'555.555.555-00', join_date:Time.parse('23/07/2009')));
        empregados.push(Employee.new(name:'Kleber', birth_date:Time.parse('15/3/1994'), cpf:'666.666.666-00', join_date:Time.parse('17/04/2002')));
    
        ok = true;
        n = empregados.length;
        Employee_sort(empregados);
        for i in 1...n do
            if(empregados[i].get_age() < empregados[i-1].get_age())
                ok = false;
                break;
            end
        end
        assert(ok, 'UNORDERED');
    end
end