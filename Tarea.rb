# Clase para contar palabras repetidas en una cadena de texto
class ContadorDePalabras
    attr_accessor :texto
    
    # Inicializar con una cadena de texto
    def initialize(texto)
      @texto = texto
    end
  
    def contar_palabras_repetidas
      #creas un hash es como un diccionario de datos 
      conteo_palabras = Hash.new(0)
      #aqui separas la cadena en cadenas mas pequeñas llamadas palabras
      @texto.split.each do |palabra|
        #las vuelves minusculas uwu
        palabra = palabra.downcase
        #y las metes al diccionario, cada vez que encuentre la llave "en este caso la palabra" el segundo valor del  diccionario aumentara en 1
        conteo_palabras[palabra] += 1
      end
      #regresas el hash
      conteo_palabras
    end
    #metodo de la tarea 3 para cambiar el valor del objeto
    def cambiar_texto (texto)
        @texto = texto
    end
  end
  
  #Defino la cadena con la cual creare el objeto
  puts "Introduzca una cadena"
  texto = $stdin.gets.chomp
  #creo el objeto con la cadena creada anterioirmente
  contador = ContadorDePalabras.new(texto)
  #guardo el hash e invoco al metodo que cuenta las palabras
  resultado = contador.contar_palabras_repetidas
  #imprimo el resultado
  resultado.each do |palabra, cantidad|
    puts "#{palabra}: #{cantidad}"
  end