require 'rspec' 

require_relative '../model/jugador'
require_relative '../model/tipo_jugada'

describe 'Jugador' do
  let(:jugador1) { Jugador.new } 
  let(:jugador2) { Jugador.new } 
  
  it 'jugador se crea sin ninguna eleccion' do
    expect(jugador1.eleccion).to eq nil
  end

  it 'jugador elige piedra, metodo eleccion retorna piedra' do
    jugador1.piedra
    expect(jugador1.eleccion).to be_a Piedra
  end

  it 'jugador elige papel, metodo eleccion retorna papel' do
    jugador1.papel
    expect(jugador1.eleccion).to be_a Papel
  end

  it 'jugador elige tijera, metodo eleccion retorna tijera' do
    jugador1.tijera
    expect(jugador1.eleccion).to be_a Tijera
  end

  it 'jugador elige mono, metodo eleccion retorna mono' do
    jugador1.mono
    expect(jugador1.eleccion).to be_a Mono
  end
end