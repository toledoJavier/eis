require 'rspec' 

require_relative '../model/tipo_jugada'

describe 'Mono' do
  let(:mono) { Mono.new }  
  
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
end