require 'rspec' 

require_relative '../model/piedra'
require_relative '../model/tijera'
require_relative '../model/papel'

describe 'Piedra' do
  let(:piedra) { Piedra.new }  
  let(:tijera) { double(Tijera) }
  let(:papel) { double(Papel) }

  it 'Metodo gana_a? retorna true, porque piedra gana a tijera' do
  	allow(tijera).to receive(:es_tijera?) { true }
    expect(piedra.gana_a?(tijera)).to eq true
  end

  it 'Metodo gana_a? retorna false, porque piedra pierde con papel' do
    allow(papel).to receive(:es_tijera?) { false }
    expect(piedra.gana_a?(papel)).to eq false
  end
  

end