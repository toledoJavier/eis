require 'rspec' 

require_relative '../model/tipo_jugada'

describe 'Tijera' do
  let(:tijera) { Tijera.new }  

  it 'Metodo sos_tijera? retorna true' do
    expect(tijera.sos_tijera?).to eq true
  end

  it 'Metodo sos_piedra? retorna false' do
    expect(tijera.sos_piedra?).to eq false
  end

  it 'Metodo sos_papel? retorna false' do
    expect(tijera.sos_papel?).to eq false
  end

  it 'Metodo sos_mono? retorna false' do
    expect(tijera.sos_mono?).to eq false
  end
end