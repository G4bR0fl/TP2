require_relative "../classes/Empregado.rb"
require_relative "../classes/Setor.rb"
require "test/unit"

# Testes para o setor
class TestSetor < Test::Unit::TestCase
        def test_novo_empregado
                joao = Empregado.new
                joao.novoEmpregado('joao',21,'01/01/1997','123456789-12','profissional','02/02/2018','contador')
                financas = Setor.new('financas')
                financas.adicionarEmpregado(joao)
                assert_equal('joao', financas.getEmpregado('joao').getInfo()['nome'])
        end
        def test_novo_empregado_errado
                joao = Empregado.new
                joao.novoEmpregado('joao',21,'01/01/1997','123456789-12','profissional','02/02/2018','contador')
                financas = Setor.new('financas')
                financas.adicionarEmpregado(joao)
                assert_raise(RuntimeError){financas.getEmpregado('pedro')}
        end
        def test_promover_diretor_setor
                cargo = 'diretor_setor'
                joao = Empregado.new
                joao.novoEmpregado('joao',21,'01/01/1997','123456789-12','profissional','02/02/2018','contador')
                financas = Setor.new('financas')
                financas.adicionarEmpregado(joao)
                financas.promoverDiretorDeSetor('joao')
                assert_equal(cargo, financas.getEmpregado('joao').getInfo()['cargo'])
        end
        def test_promover_diretor_setor_errado
                cargo = 'diretor_setor'
                joao = Empregado.new
                joao.novoEmpregado('joao',21,'01/01/1997','123456789-12','auxiliar','02/02/2018','')
                financas = Setor.new('financas')
                financas.adicionarEmpregado(joao)
                assert_raise(RuntimeError){financas.promoverDiretorDeSetor('joao')}
        end
        def test_salario_diretor_setor
        end
end
