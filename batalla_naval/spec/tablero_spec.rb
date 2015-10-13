require 'rspec'
require_relative '../model/tablero'
require_relative '../model/barcos'
require_relative '../model/agua'

describe 'BatallaNaval' do
  let(:tablero) { Tablero.new}

  it 'contenido_de_la_posicion A3, retorna Agua por que no hay barcos' do
  	expect(tablero.contenido_de_la_posicion("A3")).to be_a Agua 
  end
end