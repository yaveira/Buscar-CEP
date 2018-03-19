#language: pt
#utf-8

Funcionalidade: Consultar CEP
    Eu como usuário do ViaCEP
    Quero realizar a busca de um CEP
    para validar o seu endereço

    @get
    Esquema do Cenário: Consultar CEP
        Dado que tenha acesso ao ViaCEP
        Quando eu fizer a consulta do "<cep>"
        Então valido o endereço

        Exemplos:
    | cep               |
    | 06460000          |
    | 04571010          |
    | 20040921          |