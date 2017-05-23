require 'rspec' 
require_relative '../model/calculadorFactoresPrimos'

describe 'CalculadorFactoresPrimos' do

  let(:calculadorFactoresPrimos) { CalculadorFactoresPrimos.new }  
   
  it 'factores primos de 2 es 2' do
    factores = calculadorFactoresPrimos.obtenerFactoresPrimos(2)
    expect(factores.size).to eq 1
    expect(factores[0]).to eq 2
  end

  it 'factores primos de 3 es 3' do
    factores = calculadorFactoresPrimos.obtenerFactoresPrimos(3)
    expect(factores.size).to eq 1
    expect(factores[0]).to eq 3
  end

  it 'factores primos de 5 es 5' do
    factores = calculadorFactoresPrimos.obtenerFactoresPrimos(3)
    expect(factores.size).to eq 1
    expect(factores[0]).to eq 3
  end

  it 'factores primos de 10 es 2 y 5' do
    factores = calculadorFactoresPrimos.obtenerFactoresPrimos(10)
    expect(factores.size).to eq 2
    expect(factores[0]).to eq 2
    expect(factores[1]).to eq 5
  end

  it 'factores primos de 360 es 2 2 2 3 3 y 5' do
    factores = calculadorFactoresPrimos.obtenerFactoresPrimos(360)
    expect(factores.size).to eq 6
    expect(factores[0]).to eq 2
    expect(factores[1]).to eq 2
    expect(factores[2]).to eq 2
    expect(factores[3]).to eq 3
    expect(factores[4]).to eq 3
    expect(factores[5]).to eq 5
  end
end