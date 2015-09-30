require 'rspec' 

require_relative '../model/jugador'
require_relative '../model/tipo_jugada'

describe 'Jugador' do
  let(:jugador1) { Jugador.new } 
  let(:jugador2) { Jugador.new } 
  
  it 'jugador se crea sin ninguna eleccion' do
    expect(jugador1.eleccion).to eq nil
  end
end