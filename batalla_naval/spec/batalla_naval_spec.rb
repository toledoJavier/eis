require 'rspec'
require_relative '../model/batalla_naval'
require_relative '../model/tablero'
require_relative '../model/items_del_tablero'

describe 'BatallaNaval' do
  let(:batalla_naval) { BatallaNaval.new }
  let(:tablero_spy) { spy(Tablero)}
  let(:tablero_double) { double(Tablero) }
  let(:submarino) { double(Submarino)}

  before(:each) do 
    batalla_naval.tablero= tablero_double
    batalla_naval.barcos= {"submarino" => submarino}
  end

  it 'Al llamar al metod colocar_barco_en en A3, este lo delega a tablero' do
  	batalla_naval.tablero= tablero_spy
  	batalla_naval.colocar_barco_en("A3", "submarino", "horizontal")
  	expect(tablero_spy).to have_received(:colocar_barco_en).with("A3", submarino, "horizontal") 
  end

  it 'Al llamar al metod contenido_de_la_posicion en A3, este lo delega a tablero y retorna, en este caso submarino ' do
  	allow(tablero_double).to receive(:contenido_de_la_posicion).with("A3") { submarino }
  	expect(batalla_naval.contenido_de_la_posicion("A3")).to eq submarino
  end

  it 'Disparo en J11, este lo delega a tablero y deberia retornar Agua' do
    allow(tablero_double).to receive(:disparar_en).with("J11") { "Agua" }
    expect(batalla_naval.disparar_en("J11")).to eq "Agua"
  end
end