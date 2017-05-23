class CalculadorFactoresPrimos

  def obtenerFactoresPrimos (numero)
    divisor = 2
    factoresPrimos = Array.new

    while divisor <= numero
      resto = numero % divisor

      if resto == 0
        numero = numero / divisor
          
        factoresPrimos.push(divisor)
      else
        divisor += 1
      end
    end

    return factoresPrimos
  end

end