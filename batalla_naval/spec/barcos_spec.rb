require 'rspec'
require_relative '../model/items_del_tablero'

describe 'Barcos' do
  let(:submarino) { Submarino.new }
  let(:crucero) { Crucero.new }
  let(:destructor) { Destructor.new }

  it 'tamanio de submarino debe ser 1' do
  	expect(submarino.tamanio).to eq 1
  end

  it 'tamanio de crucero debe ser 2' do
    expect(crucero.tamanio).to eq 2
  end

  it 'tamanio de destructor debe ser 3' do
    expect(destructor.tamanio).to eq 3
  end

  it 'recibir disparo debe aumentar en 1 los disparos recibidos y retornar Barco Averiado' do
    expect(crucero.recibir_disparo).to eq "Barco Averiado"
    expect(crucero.disparos_recibidos).to eq 1
  end
end