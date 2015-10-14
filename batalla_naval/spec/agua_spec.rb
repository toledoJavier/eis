require 'rspec'
require_relative '../model/items_del_tablero'

describe 'Agua' do
  let(:agua) { Agua.new}
  
  it 'recibir disparo retorna Agua' do
    expect(agua.recibir_disparo).to eq "Agua"
  end
end