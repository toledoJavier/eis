require 'rspec' 

require_relative '../model/tipo_jugada'

describe 'Papel' do
  let(:papel) { Papel.new }  

  it 'Metodo sos_papel? retorna true' do
    expect(papel.sos_papel?).to eq true
  end
end