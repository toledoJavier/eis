require 'rspec'
require_relative '../app/models/calculadora'
require_relative '../app/models/memoria'

describe 'Calculadora' do
  let(:calculadora) { Calculadora.new }
  let(:memoria_double) { double(Memoria) }
  let(:memoria_spy) { spy(Memoria) }

  it 'sumar de 1 y 2, es 3' do
    expect(calculadora.sumar(1, 2)).to eq 3
  end

  it 'restar 8 y 3, es 5' do
  	expect(calculadora.restar(8, 3)).to eq 5
  end

  it 'promedio de 6 y 8, es 7' do
    expect(calculadora.promedio(6, 8)).to eq 7
  end

  it 'cantidad de operaciones se lo delega a Memoria, esta retorna por ejemplo 4' do
  	calculadora.memoria= memoria_double
  	allow(memoria_double).to receive(:contador) { 4 }
    expect(calculadora.cantidad_de_operaciones).to eq 4
  end

  it 'cuando se utiliza sumar, restar o promedio se le pide a memoria que aumente uno' do
  	calculadora.memoria= memoria_spy
  	calculadora.sumar 4, 5
    expect(memoria_spy).to have_received(:aumentar_uno)
  end
end