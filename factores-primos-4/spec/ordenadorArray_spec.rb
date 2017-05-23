require 'rspec' 
require_relative '../model/ordenadorDeArray'

describe 'OrdenadorDeArray' do

  let(:ordenador) { OrdenadorDeArray.new }  
   
  it 'ordenar Ascendente {4, 2, 3} devuelve {2, 3 ,4}' do
    arregloAOrdenar = Array.new
    arregloAOrdenar.push(4)
    arregloAOrdenar.push(2)
    arregloAOrdenar.push(3)

    result = ordenador.ordenarAscendentemente(arregloAOrdenar)
    expect(result.size).to eq 3
    expect(result[0]).to eq 2
    expect(result[1]).to eq 3
    expect(result[2]).to eq 4
  end

  it 'ordenar Ascendente {2, 3, 4} devuelve {2, 3 ,4}' do
    arregloAOrdenar = Array.new
    arregloAOrdenar.push(2)
    arregloAOrdenar.push(3)
    arregloAOrdenar.push(4)

    result = ordenador.ordenarAscendentemente(arregloAOrdenar)
    expect(result.size).to eq 3
    expect(result[0]).to eq 2
    expect(result[1]).to eq 3
    expect(result[2]).to eq 4
  end

  it 'ordenar Descendentemente {2, 3, 4} devuelve {4, 3 ,2}' do
    arregloAOrdenar = Array.new
    arregloAOrdenar.push(2)
    arregloAOrdenar.push(3)
    arregloAOrdenar.push(4)

    result = ordenador.ordenarDescendente(arregloAOrdenar)
    expect(result.size).to eq 3
    expect(result[0]).to eq 4
    expect(result[1]).to eq 3
    expect(result[2]).to eq 2
  end

  it 'ordenar Descendentemente {4, 2, 3} devuelve {4, 3 ,2}' do
    arregloAOrdenar = Array.new
    arregloAOrdenar.push(4)
    arregloAOrdenar.push(2)
    arregloAOrdenar.push(3)

    result = ordenador.ordenarDescendente(arregloAOrdenar)
    expect(result.size).to eq 3
    expect(result[0]).to eq 4
    expect(result[1]).to eq 3
    expect(result[2]).to eq 2
  end
end