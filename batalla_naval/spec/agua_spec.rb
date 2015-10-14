require 'rspec'
require_relative '../model/agua'

describe 'Agua' do
  let(:agua) { Agua.new}
  

  it 'recibir disparo retorna Agua' do
    expect(agua.recibir_disparo).to eq "Agua"
  end
end