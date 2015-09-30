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
end