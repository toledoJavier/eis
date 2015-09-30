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

  it 'Metodo ganador? retorna jugador2' do
    allow(jugador1).to receive(:gana?).with(jugador2) { false }
    allow(jugador2).to receive(:gana?).with(jugador1) { true }
    expect(ronda.ganador?).to eq jugador2
  end

  it 'El metodo ganador? retorna [jugador1, jugador2] ya que empatan' do
    allow(jugador1).to receive(:gana?).with(jugador2) { false }
    allow(jugador2).to receive(:gana?).with(jugador1) { false }
    expect(ronda.ganador?).to eq [jugador1, jugador2]
  end

  it 'Prueba de una ronda donde gana jugador1' do
    un_jugador= Jugador.new
    otro_jugador= Jugador.new
    ronda= Ronda.new(un_jugador, otro_jugador)
    un_jugador.piedra
    otro_jugador.tijera
    expect(ronda.ganador?).to eq un_jugador
  end
end