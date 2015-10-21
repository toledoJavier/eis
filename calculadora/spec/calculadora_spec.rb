require 'rspec'
require_relative '../app/models/calculadora'

describe 'Calculadora' do
  let(:calculadora) { Calculadora.new }
  
  it 'sumar de 1 y 2, es 3' do
    expect(calculadora.sumar(1, 2)).to eq 3
  end
end