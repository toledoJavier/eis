require 'rspec'
require_relative '../app/models/calculadora'

describe 'Calculadora' do
  let(:calculadora) { Calculadora.new }
  
  it 'sumar de 1 y 2, es 3' do
    expect(calculadora.sumar(1, 2)).to eq 3
  end

  it 'restar 8 y 3, es 5' do
  	expect(calculadora.restar(8, 3)).to eq 5
  end

  it 'promedio de 6 y 8, es 7' do
    expect(calculadora.promedio(6, 8)).to eq 7
  end
end