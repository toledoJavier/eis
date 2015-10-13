require 'rspec'
require_relative '../model/batalla_naval'
require_relative '../model/tablero'
require_relative '../model/barcos'

describe 'BatallaNaval' do
  let(:batalla_naval) { BatallaNaval.new }
  let(:tablero) { spy(Tablero) }
  let(:submarino) { double(Submarino)}
  
  before(:each) do 
    batalla_naval.tablero= tablero
    batalla_naval.barcos= {"submarino" => submarino}
  end

  it 'Al llamar al metod colocar_barco_en en A3, este lo delega a tablero' do
  	puts batalla_naval.barcos
  	batalla_naval.colocar_barco_en("A3", "submarino", "horizontal")
  	expect(tablero).to have_received(:colocar_barco_en).with("A3", submarino, "horizontal") 
  end
end