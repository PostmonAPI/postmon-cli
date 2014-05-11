require 'postmon_ruby'

module PostmonCli
  class Wrapper
    def self.cep(cep)
      resultado = PostmonRuby::Client.search :cep, cep
      Output.resultado(resultado)
    end

    def self.cidade(uf, cidade)
      resultado = PostmonRuby::Client.search :cidade, uf, cidade
      Output.resultado(resultado)
    end

    def self.estado(uf)
      resultado = PostmonRuby::Client.search :estado, uf
      Output.resultado(resultado)
    end

    def self.rastreio(rastreio)
      resultado = PostmonRuby::Client.search :rastreio, :ect, rastreio
      Output.resultado(resultado)
    end
  end
end

