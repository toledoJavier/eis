require 'rspec'
require_relative '../model/tablero'
require_relative '../model/barcos'
require_relative '../model/agua'

describe 'Tablero' do
  let(:tablero) { Tablero.new}
  let(:submarino_double) { double(Submarino)}

  it 'contenido_de_la_posicion A3, retorna Agua por que no hay barcos' do
  	expect(tablero.contenido_de_la_posicion("A3")).to be_a Agua 
  end

  it 'colocar_barco_en con A3, submarino, izquierda, luego al consultar el contenido de A3 deberia ser submarino' do
    tablero.colocar_barco_en("A3", submarino_double, "izquierda")
    expect(tablero.contenido_de_la_posicion("A3")).to eq submarino_double
  end

end