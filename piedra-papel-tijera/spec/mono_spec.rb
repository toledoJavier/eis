require 'rspec' 

require_relative '../model/tipo_jugada'

describe 'Mono' do
  let(:mono) { Mono.new }  
  
  it 'Metodo sos_mono? retorna true' do
    expect(mono.sos_mono?).to eq true
  end
end