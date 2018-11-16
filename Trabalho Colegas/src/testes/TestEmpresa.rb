require_relative "../classes/Empresa.rb"
require "test/unit"

class TestEmpresa < Test::Unit::TestCase
        def test_novo_setor
                nome_setor = "Finanças"
                empresa = Empresa.new
                empresa.novoSetor(nome_setor)
                assert_equal(nome_setor, empresa.getSetores()[nome_setor].getNome)

        end
end
