require 'rspec' 

require_relative '../model/tipo_jugada'

describe 'Tijera' do
  let(:tijera) { Tijera.new }  

  it 'Metodo sos_tijera? retorna true' do
    expect(tijera.sos_tijera?).to eq true
  end
end