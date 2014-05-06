# PostmonCli

Consulte informações como CEP, dados de estados e cidades e acompanhe onde o seu pedido enviado
pelos correios está, tudo pelo bash :)

## Instalação

    $ gem install postmon_cli

## Uso
#### Consultar pelo CEP:

    $ postmon cep 49015040

    Complemento: lado ímpar
    Bairro: São José
    Cidade: Aracaju
    Logradouro: Avenida Barão de Maruim
    Estado: SE
    Cep: 49015040

#### Consultar informações de uma cidade:

    $ postmon cidade SE,Aracaju

    Area_km2: 181,857
    Codigo_ibge: 2800308

#### Consultar informações de um estado:

    $ postmon estado SE

    Area_km2: 21.915,116
    Codigo_ibge: 28
    Nome: Sergipe

#### Consultar informações de rastreio de um pacote:

    $ postmon rastreio RF223325059SG

    Codigo: RF223325059SG
    Servico: ect
    detalhes: Em trвnsito para UNIDADE DE TRATAMENTO INTERNACIONAL - BRASIL
    local: CINGAPURA
    data: 11/04/2014 14:04
    situacao: Encaminhado

#### Menu de opções:

    $ postmon

    Usage: postmon <command> [value]

    Commands:
    cep       Consultar CEP
              ex: postmon cep 49015040

    cidade    Consultar informações de uma cidade
              ex: postmon cidade SE Aracaju

    estado    Consultar informações de um estado
              ex: postmon estado SE

    rastreio  Consultar informações de rastreio de um pacote
              ex: postmon rastreio AA987654321BR

## Contribua

1. Fork o PostmonCli
2. Crie seu branch com as novas implementações ou correções (`git checkout -b my-new-feature`)
3. Commit suas mudanças (`git commit -am 'Add some feature'`)
4. Dê Push (`git push origin my-new-feature`)
5. Crie um Pull Request
