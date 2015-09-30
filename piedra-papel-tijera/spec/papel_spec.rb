require 'rspec' 

require_relative '../model/tipo_jugada'

describe 'Papel' do
  let(:papel) { Papel.new }  

  it 'Metodo sos_papel? retorna true' do
    expect(papel.sos_papel?).to eq true
  end

  it 'Metodo sos_piedra? retorna false' do
    expect(papel.sos_piedra?).to eq false
  end

  it 'Metodo sos_tijera? retorna false' do
    expect(papel.sos_tijera?).to eq false
  end

  it 'Metodo sos_mono? retorna false' do
    expect(papel.sos_mono?).to eq false
  end
end