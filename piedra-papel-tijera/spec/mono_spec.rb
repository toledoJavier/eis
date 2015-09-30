require 'rspec' 

require_relative '../model/tipo_jugada'

describe 'Mono' do
  let(:mono) { Mono.new }  
  let(:papel) { double(Papel) }

  it 'Metodo sos_mono? retorna true' do
    expect(mono.sos_mono?).to eq true
  end

  it 'Metodo sos_piedra? retorna false' do
    expect(mono.sos_piedra?).to eq false
  end

  it 'Metodo sos_tijera? retorna false' do
    expect(mono.sos_tijera?).to eq false
  end

  it 'Metodo sos_papel retorna false' do
    expect(mono.sos_papel?).to eq false
  end

  it 'Metodo gana_a? retorna true, porque mono le gana a papel' do
    allow(papel).to receive(:sos_papel?) { true }
    expect(mono.gana_a?(papel)).to eq true
  end
end