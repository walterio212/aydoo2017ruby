require 'sinatra'
require_relative './model/calculadorFactoresPrimos'
require_relative './model/ordenadorDeArray'

get '/primos' do
  variable = params[:x]
  mensaje = ''
  if variable.match(/^(\d)+$/)
    numero = Integer(variable)
    calculador = CalculadorFactoresPrimos.new
    ordenador = OrdenadorDeArray.new
    factores = calculador.obtenerFactoresPrimos(numero)
    ordenado = ordenador.ordenarAscendentemente(factores)
    mensaje = ordenado.join(' ')
    body mensaje
  else
    status 400
    body "bad request"
  end
end

post '/primos' do
  variable = params[:x]
  mensaje = ''
  if variable.match(/^(\d)+$/)
    numero = Integer(variable)
    calculador = CalculadorFactoresPrimos.new
    ordenador = OrdenadorDeArray.new
    factores = calculador.obtenerFactoresPrimos(numero)
    ordenado = ordenador.ordenarDescendente(factores)
    mensaje = ordenado.join(' ')
    body mensaje
  else
    status 400
    body "bad request"
  end
end
