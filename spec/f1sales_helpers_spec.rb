RSpec.describe F1SalesHelpers do
  it "has a version number" do
    expect(F1SalesHelpers::VERSION).not_to be nil
  end

  describe '.colons_to_hash' do
    let(:text){ "\nNome: Alexandre\n\nTelefone: (11) 98912-2842\nE-mail: svicero.as@gmail.com\nModelo: IRON 883™ 2018\nMensagem: Quero saber sobre financiamento com o minimo de entrada e 48x\n" }
    let(:hash_from_text){
      {
        'nome' => 'Alexandre',
        'telefone' => '(11) 98912-2842',
        'email' => 'svicero.as@gmail.com',
        'modelo' => 'IRON 883™ 2018',
        'mensagem' => 'Quero saber sobre financiamento com o minimo de entrada e 48x'
      }
    }

    it 'string with colons to hash' do
      expect(text.colons_to_hash).to eq(hash_from_text)
    end
  end
end
