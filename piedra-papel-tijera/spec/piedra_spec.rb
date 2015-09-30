require 'rspec' 

require_relative '../model/piedra'
require_relative '../model/tijera'

describe 'Piedra' do
  let(:piedra) { Piedra.new }  
  let(:tijera) { double(Tijera) }
  
  it 'Metodo gana_a? retorna true, porque piedra gana a tijera' do
  	allow(tijera).to receive(:es_tijera?) { true }
    expect(piedra.gana_a?(tijera)).to eq true
  end
end