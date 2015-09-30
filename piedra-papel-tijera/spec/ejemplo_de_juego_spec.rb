require 'rspec' 

require_relative '../model/ronda'
require_relative '../model/jugador'
require_relative '../model/partida'

describe 'Partida' do
  let(:jugador1) { Jugador.new }  
  let(:jugador2) { Jugador.new }
  let(:partida) { Partida.new(jugador1, jugador2) }

  it 'Partida donde el ganador es el jugador1' do

    ronda1= Ronda.new(jugador1, jugador2)
    jugador1.piedra
    jugador2.tijera
    partida.guardar_resultado_ronda ronda1.ganador?
    
    #por ahora gana jugador1
    expect(partida.ganador?).to eq jugador1

    ronda2= Ronda.new(jugador1, jugador2)
    jugador1.papel
    jugador2.mono
    partida.guardar_resultado_ronda ronda2.ganador?
    
    #por ahora hay empate
    expect(partida.ganador?).to eq [jugador1, jugador2]

    ronda3= Ronda.new(jugador1, jugador2)
    jugador1.papel
    jugador2.piedra
    partida.guardar_resultado_ronda ronda3.ganador?
    
    #gana jugador1
    expect(partida.ganador?).to eq jugador1
  end
end