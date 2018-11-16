require_relative "../classes/Empregado.rb"
require "test/unit"

class TestEmpregado < Test::Unit::TestCase
        def test_nome
                nome = "John Doe"
                emp = Empregado.new
                emp.setNome(nome)
                assert_equal(nome, emp.getInfo()['nome'])
        end
        def test_idade
                idade = 20
                emp = Empregado.new
                emp.setIdade(idade)
                assert_equal(idade, emp.getInfo()['idade'])
        end
        def test_idade_errada
                idade = 200
                emp = Empregado.new
                assert_raise(RuntimeError){ emp.setIdade(idade) }
        end
        def test_validar_data
                data = '03/09/1997'
                emp = Empregado.new
                ret = emp.validateData(data)
                assert_equal(true, ret)
        end
        def test_data_nascimento
                data_nascimento = "03/09/1997"
                emp = Empregado.new
                emp.setDataNascimento(data_nascimento)
                assert_equal(data_nascimento, emp.getInfo()['data_nascimento'])
        end
        def test_data_nascimento_errada
                data_nascimento = "15/15/2015"
                emp = Empregado.new
                assert_raise(RuntimeError){ emp.setDataNascimento(data_nascimento) }
        end

        def test_validar_cpf
                cpf = "123456789-01"
                emp = Empregado.new
                ret = emp.validateCPF(cpf)
                assert_equal(true, ret)
        end

        def test_cpf
                cpf = "123456789-01"
                emp = Empregado.new
                emp.setCPF(cpf)
                assert_equal(cpf, emp.getInfo()['cpf'])
        end
        def test_cpf_errado
                cpf = "123a56789-011"
                emp = Empregado.new
                assert_raise(RuntimeError){ emp.setCPF(cpf) }
        end
        def test_id
                id = "1234"
                emp = Empregado.new
                emp.setID(id)
                assert_equal(id, emp.getInfo()['id'])
        end
        def test_id_errado
                id = '12345'
                emp = Empregado.new
                assert_raise(RuntimeError){emp.setID(id)}
        end
        def test_cargo
                cargo = 'auxiliar'
                emp = Empregado.new
                emp.setCargo(cargo)
                assert_equal(cargo, emp.getInfo()['cargo'])
        end
        def test_cargo_errado
                cargo = 'diretor executivo'
                emp = Empregado.new
                assert_raise(RuntimeError){emp.setCargo(cargo)}
        end
        def test_data_entrada
                data_entrada = "10/10/2014"
                emp = Empregado.new
                emp.setDataEntrada(data_entrada)
                assert_equal(data_entrada, emp.getInfo()['data_entrada'])
        end
        def test_profissao
                profissao = 'engenheiro_social'
                emp = Empregado.new
                emp.setCargo('profissional')
                emp.setProfissao(profissao)
                assert_equal(profissao, emp.getInfo()['profissao'])
        end
        def test_profissao_errado
                profissao = 'engenheiro_de_software'
                emp = Empregado.new
                emp.setCargo('profissional')
                assert_raise(RuntimeError){emp.setProfissao(profissao)}
        end
        def test_setor
                setor = 'financas'
                emp = Empregado.new
                emp.setSetor(setor)
                assert_equal(setor, emp.getInfo()['setor'])
        end
        def test_setor_errado
                setor = "infraestrutura"
                emp = Empregado.new
                assert_raise(RuntimeError){emp.setSetor(setor)}
        end
        def test_salario
                salario = 1500
                emp = Empregado.new
                emp.setCargo('auxiliar')
                emp.setSalario()
                assert_equal(salario, emp.getInfo()['salario'])
        end
        def test_vale_transporte
                vale = 350
                emp = Empregado.new
                emp.setCargo('auxiliar')
                emp.setValeTransporte('auxiliar')
                assert_equal(vale, emp.getInfo()['vale_transporte'])
        end
end
