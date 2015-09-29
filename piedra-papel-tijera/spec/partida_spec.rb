require 'rspec' 

require_relative '../model/ronda'
require_relative '../model/jugador'
require_relative '../model/partida'

describe 'Partida' do
  let(:jugador1) { double(Jugador) }  
  let(:jugador2) { double(Jugador) }
  let(:ronda1) { double(Ronda) }
  let(:ronda2) { double(Ronda) }
  let(:ronda3) { double(Ronda) }
  
  before(:each) do 
    @partida= Partida.new(jugador1, jugador2) 
  end

  it 'Metodo ganador? retorna el jugador1 por que gano mas rondas' do
  	allow(ronda1).to receive(:ganador?) { jugador1 }
    allow(ronda2).to receive(:ganador?) { jugador2 }
    allow(ronda3).to receive(:ganador?) { jugador1 }
    @partida.agregar_ronda(ronda1)
    @partida.agregar_ronda(ronda2)
    @partida.agregar_ronda(ronda3)
    expect(@partida.ganador?).to eq jugador1
  end
end