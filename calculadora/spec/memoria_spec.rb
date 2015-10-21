require 'rspec'
require_relative '../app/models/memoria'

describe 'Memoria' do
  let(:memoria) { Memoria.new }

  it 'contador de memoria recien creada, es 0' do
    expect(memoria.contador).to eq 0
  end

  it 'al llamar 2 veces aumentar_uno, hace que contador retorne 2' do
    memoria.aumentar_uno
    memoria.aumentar_uno
    expect(memoria.contador).to eq 2
  end
end