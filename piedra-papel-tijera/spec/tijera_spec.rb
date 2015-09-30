require 'rspec' 

require_relative '../model/tipo_jugada'

describe 'Tijera' do
  let(:tijera) { Tijera.new }  
  let(:piedra) { double(Piedra) }

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

  it 'Metodo gana_a? retorna false, porque tijera pierde con piedra' do
    allow(piedra).to receive(:sos_papel?) { false }
    allow(piedra).to receive(:sos_mono?) { false }
    expect(tijera.gana_a?(piedra)).to eq false
  end

  it 'Metodo gana_a? retorna false, porque tijera empata con tijera' do
    expect(tijera.gana_a?(tijera)).to eq false
  end
end