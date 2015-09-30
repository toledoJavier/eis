require 'rspec' 

require_relative '../model/tipo_jugada'

describe 'Papel' do
  let(:papel) { Papel.new }  
  let(:tijera) { double(Tijera) }
  let(:mono) { double(Mono) }

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

  it 'Metodo gana_a? retorna false, porque papel pierde con tijera' do
    allow(tijera).to receive(:sos_piedra?) { false }
    expect(papel.gana_a?(tijera)).to eq false
  end

  it 'Metodo gana_a? retorna false, porque papel pierde con mono' do
    allow(mono).to receive(:sos_piedra?) { false }
    expect(papel.gana_a?(mono)).to eq false
  end
end