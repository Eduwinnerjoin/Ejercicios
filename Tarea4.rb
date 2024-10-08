class ContadorPalabras
    # Se inicializa la variable de instancia @texto que almacenará el String de entrada.
    def initialize(texto)
      @texto = texto
    end
  
    # Este método cuenta las palabras repetidas en el texto utilizando un Hash para almacenar las 
    # palabras y su frecuencia.
    def contar_palabras_repetidas
      # El método scan con una expresión regular selecciona todas las palabras en el texto.
      palabras = @texto.scan(/\w+/)
  
      # Se inicializa un Hash para almacenar la frecuencia de cada palabra.
      frecuencia = Hash.new(0)
  
      # Se itera sobre cada palabra para contar su frecuencia.
      palabras.each do |palabra|
        frecuencia[palabra.downcase] += 1
      end
  
      # Se devuelve el Hash de frecuencias.
      frecuencia
    end
  
    # Este método imprime las palabras y sus frecuencias en el formato solicitado.
    def imprimir_frecuencia
      # Se obtiene el Hash de frecuencias llamando al método de contar palabras.
      frecuencias = contar_palabras_repetidas
      puts "Contador de cada vez que se repiten las palabras:"
  
      # Se itera sobre cada par de palabra y frecuencia en el Hash.
      frecuencias.each do |palabra, cuenta|
        # Se imprime la palabra con su frecuencia.
        puts "#{palabra.capitalize} => #{cuenta}"
      end
    end
  
    def actualizar_texto(nuevo_texto)
      @texto = nuevo_texto
    end
  
    def to_s
      "ContadorPalabras: cadena = #{@texto}"
    end
  end
  
  cadena = "Naruto es un ninja con un gran sueño. Naruto quiere ser Hokage, el ninja 
    más fuerte de la aldea"
  contador = ContadorPalabras.new(cadena)
  contador.imprimir_frecuencia
  
  cadena2 = "Los amigos de Naruto, como Sasuke y Sakura, lo apoyan en su viaje. Naruto 
siempre cree en el poder de la amistad"
  contador.actualizar_texto(cadena2)
  contador.imprimir_frecuencia
  
  puts contador
  
