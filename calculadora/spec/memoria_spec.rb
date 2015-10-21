require 'rspec'
require_relative '../app/models/memoria'

describe 'Memoria' do
  let(:memoria) { Memoria.new }

  it 'contador de memoria recien creada, es 0' do
    expect(memoria.contador).to eq 0
  end
end