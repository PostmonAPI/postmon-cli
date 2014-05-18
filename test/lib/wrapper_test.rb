require './test/test_helper'
require 'postmon_cli/wrapper'
require 'postmon_cli/output'

class WrapperTest < Minitest::Test
  def setup
    @cep = PostmonCli::Wrapper.cep('49097320').to_s
    @cidade = PostmonCli::Wrapper.cidade('SE', 'Aracaju').to_s
    @estado = PostmonCli::Wrapper.estado('SE').to_s
  end

  def test_get_cep
    assert_match(/Logradouro|Bairro|Complemento|Cidade|Estado|Cep/, @cep)
  end

  def test_get_cidade
    assert_match(/Area_km2|Codigo_ibge/, @cidade)
  end

  def test_get_estado
    assert_match(/Area_km2|Codigo_ibge|Nome/, @estado)
  end
end
