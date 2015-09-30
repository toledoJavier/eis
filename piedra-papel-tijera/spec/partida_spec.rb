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
    @partida.guardar_resultado_ronda ronda1.ganador?
    @partida.guardar_resultado_ronda ronda2.ganador?
    @partida.guardar_resultado_ronda ronda3.ganador?
    expect(@partida.ganador?).to eq jugador1
  end

  it 'jugador2 gana una ronda2, ronda1 y 3 empatan, ganador? jugador2' do
    allow(ronda1).to receive(:ganador?) { [jugador1, jugador2] }
    allow(ronda2).to receive(:ganador?) { jugador2 }
    allow(ronda3).to receive(:ganador?) { [jugador1, jugador2] }
    @partida.guardar_resultado_ronda ronda1.ganador?
    @partida.guardar_resultado_ronda ronda2.ganador?
    @partida.guardar_resultado_ronda ronda3.ganador? 
    expect(@partida.ganador?).to eq jugador2
  end

  it 'ganador? retorna [jugador1, jugador2], por que empatan todas las rondas' do
    allow(ronda1).to receive(:ganador?) { [jugador1, jugador2] }
    allow(ronda2).to receive(:ganador?) { [jugador1, jugador2] }
    allow(ronda3).to receive(:ganador?) { [jugador1, jugador2] }
    @partida.guardar_resultado_ronda ronda1.ganador?
    @partida.guardar_resultado_ronda ronda2.ganador?
    @partida.guardar_resultado_ronda ronda3.ganador?
    expect(@partida.ganador?).to eq [jugador1, jugador2]
  end

  it 'Cada jugador gana una ronda y empatan la otra, ganador? retorna empate [jugador1, jugador2]' do
    allow(ronda1).to receive(:ganador?) { jugador2 }
    allow(ronda2).to receive(:ganador?) { [jugador1, jugador2] }
    allow(ronda3).to receive(:ganador?) { jugador1 }
    @partida.guardar_resultado_ronda ronda1.ganador?
    @partida.guardar_resultado_ronda ronda2.ganador?
    @partida.guardar_resultado_ronda ronda3.ganador?
    expect(@partida.ganador?).to eq [jugador1, jugador2]
  end
end