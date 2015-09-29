require 'rspec' 
require_relative '../model/ronda'
require_relative '../model/jugador'

describe 'Ronda' do
  let(:jugador1) { double(Jugador) }  
  let(:jugador2) { double(Jugador) }
  let(:ronda) { Ronda.new(jugador1, jugador2) }

  it 'Metodo ganador? retorna jugador1' do
  	allow(jugador1).to receive(:gana?).with(jugador2) { true }
  	allow(jugador2).to receive(:gana?).with(jugador1) { false }
    expect(ronda.ganador?).to eq jugador1
  end
end