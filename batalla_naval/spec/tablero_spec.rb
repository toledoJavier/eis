require 'rspec'
require_relative '../model/tablero'
require_relative '../model/items_del_tablero'
require_relative '../model/excepciones'

describe 'Tablero' do
  let(:tablero) { Tablero.new}
  let(:submarino_double) { double(Submarino)}
  let(:crucero_double) { double(Crucero)}
  let(:destructor_double) { double(Destructor)}
  let(:agua) { double(Agua)}

  before(:each) do
    allow(submarino_double).to receive(:tamanio) { 1 }
    allow(crucero_double).to receive(:tamanio) { 2 }
    allow(destructor_double).to receive(:tamanio) { 3 }
  end

  it 'contenido_de_la_posicion A3, retorna Agua por que no hay barcos' do
  	expect(tablero.contenido_de_la_posicion("A3")).to be_a Agua 
  end

  it 'colocar_barco_en con A3, submarino, horizontal, luego al consultar el contenido de A3 deberia ser submarino' do
    tablero.colocar_barco_en("A3", submarino_double, "horizontal")
    expect(tablero.contenido_de_la_posicion("A3")).to eq submarino_double
  end

  it 'un crucero ocupa las posiciones F4 y F5, al intentar colocar un destructor vertical en E4 no se puede choca en F4' do
    tablero.colocar_barco_en("F4", crucero_double, "horizontal")
    expect{tablero.colocar_barco_en("E4", destructor_double, "vertical")}.to raise_error(PosicionOcupadaException)
  end
  
  it 'no se puede colocar un barco en una posicion fuera del tablero' do
    expect{tablero.colocar_barco_en("A11", crucero_double, "horizontal")}.to raise_error(PosicionInvalidaException)
  end

  it 'Disparo en J10, este delega responsabilidad a Agua y retorna el resultado' do
    posiciones_double= double(Hash)
    tablero.posiciones= posiciones_double
    allow(posiciones_double).to receive(:[]).with("J10") { agua }
    allow(agua).to receive(:recibir_disparo) { "Agua" }
    expect(tablero.disparar_en("J10")).to eq "Agua"
  end

  it 'disparo en J11, como es una posicion invalida me retorna PosicionInvalidaException' do
    expect{ tablero.disparar_en("J11") }.to raise_error(PosicionInvalidaException)
  end
end