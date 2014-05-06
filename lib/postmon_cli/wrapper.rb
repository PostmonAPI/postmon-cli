require 'postmon_ruby'

module PostmonCli
  class Wrapper
    def self.get_cep(cep)
      PostmonRuby::GemOutput.cep(cep)
    end

    def self.get_cidade(uf, cidade)
      PostmonRuby::GemOutput.cidade(uf, cidade)
    end

    def self.get_estado(uf)
      PostmonRuby::GemOutput.estado(uf)
    end

    def self.get_rastreio(codigo)
      PostmonRuby::GemOutput.rastreio(codigo)
    end
  end
end

