require 'test/unit'
require 'time'
require_relative "../src/Employee"

class Sorted_by_ageTest < Test::Unit::TestCase 
    
    def test_ordered
        empregados = Array.new;
        empregados.push(Employee.new(name: 'Jose', birth_date: Time.parse('25/03/1997'), cpf: '111.111.111-00', join_date: Time.parse('10/02/2005'), bonus: 350.00, role: 'Analista'));
        empregados.push(Employee.new(name: 'Rose', birth_date: Time.parse('20/04/1990'), cpf: '123.111.111-00', join_date: Time.parse('10/02/2005'), bonus: 350.00, role: 'Analista'));
        empregados.push(Employee.new(name: 'Jeremias', birth_date: Time.parse('15/01/1900'), cpf: '111.123.111-00', join_date: Time.parse('10/02/2005'), bonus: 350.00, role: 'Analista'));
        empregados.push(Employee.new(name: 'Kleiton', birth_date: Time.parse('11/09/1945'), cpf: '111.111.123-00', join_date: Time.parse('10/02/2005'), bonus: 350.00, role: 'Analista'));
        empregados.push(Employee.new(name: 'Maria', birth_date: Time.parse('12/12/1936'), cpf: '111.111.111-23', join_date: Time.parse('10/02/2005'), bonus: 350.00, role: 'Analista'));
        empregados.push(Employee.new(name: 'Andy', birth_date: Time.parse('28/10/1993'), cpf: '123.456.111-00', join_date: Time.parse('10/02/2005'), bonus: 350.00, role: 'Analista'));
    
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