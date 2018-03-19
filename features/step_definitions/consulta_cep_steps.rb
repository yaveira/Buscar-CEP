Dado 'que tenha acesso ao ViaCEP' do
end

Quando 'eu fizer a consulta do {string}' do |cep|
    @response = HTTParty.get("http://viacep.com.br/ws/#{cep}/json/")
    puts "\n CEP: " + @response['cep'] + "\n Logradouro: " + @response['logradouro'] + "\n Bairro: " + @response['bairro'] + "\n Localidade: " + @response['localidade'] + "\n UF: " + @response['uf']
end

Então 'valido o endereço' do
    expect(@response.code).to eq 200
    puts @response.code
end