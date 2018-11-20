require 'test/unit'
require 'time'
# Nosso sistema
require_relative '../Trabalho 1/src/Employee.rb'
require_relative '../Trabalho 1/src/Sector.rb'
require_relative '../Trabalho 1/src/Job.rb'
# Sistema dos colegas
require_relative '../Trabalho Colegas/src/classes/Empregado.rb'

def lookup_Sector(sector, name)
    for s in sector.each 
        if s.get_sector_name() == name
            return s
        end
    end
    return nil
end

def lookup_Job(jobs, name)
    for j in jobs.each
        if j.get_name() == name
            return j
        end
    end
    return nil
end

class SystemsIntegrationTest < Test::Unit::TestCase

    def setup
        # Setores são iguais para ambos os sistemas
        @setores = [
            Sector.new('financas', ['administrador', 'contador', 'economista']),
            Sector.new('marketing', ['comunicador', 'administrador', 'mercadologo']),
            Sector.new('tecnologia', ['engenheiro_de_computacao', 'engenheiro_de_sistemas', 'engenheiro_de_informacao']),
            Sector.new('normatividade', ['advogado', 'comunicador', 'contador']),
            Sector.new('design', ['designer_grafico', 'designer_multimedia', 'engenheiro_social'])
        ]
        # Cargos são iguais para ambos os sistemas
        @cargos = [
            Job.new('auxiliar', 1500),
            Job.new('tecnico', 3000),
            Job.new('profissional', 6500),
            Job.new('diretor_setor', 9500),
            Job.new('diretor_operacoes', 13000),
            Job.new('diretor_executivo', 18000)
        ]
        # Cria um empregado no sistema dos colegas
        @empregado = Empregado.new
        @empregado.novoEmpregado('Kléber', 29, '10/11/1989', '012593556-24', 'auxiliar', '01/02/2016', 'designer_grafico')
    end

    def test_import
        # Importa o empregado do outro sistema para o nosso
        new_employee = Employee.import_Employee(@empregado.getInfo())
        # cargo e setor vem separados por conta de diferenças nos sistemas
        job_name = @empregado.getInfo()['cargo']
        setor_name = @empregado.getInfo()['setor']
        # Encontra os objetos Cargo e Setor apropriados
        job = lookup_Job(@cargos, job_name)
        sector = lookup_Sector(@setores, setor_name)
        # Tenta adicionar informações
        new_employee.set_Job(job) if job != nil
        sector.add_employee(new_employee) if sector != nil

        # Verifica se importou corretamente   
        assert(new_employee.instance_of?(Employee))
        assert_equal('Kléber', new_employee.get_name())
        assert_equal('10/11/1989', new_employee.get_birth_date())
        assert_equal(@empregado.getInfo()['cargo'], new_employee.get_role())
    end
end