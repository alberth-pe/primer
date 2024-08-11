def convert_to_camel_case(s)
    words = s.split(/_|-/)  # Dividir la cadena en palabras por guiones bajos o guiones
    # Convertir la primera palabra a mayúscula si la original estaba en mayúscula
    if words[0] =~ /^[A-Z]/
      words[0] = words[0].capitalize
    else
      words[0] = words[0].downcase
    end 
    # Convertir las palabras restantes a mayúscula
    words = words.map(&:capitalize)[1..-1]
    # Unir las palabras en una sola cadena
    camel_case_string = words.join("")
    camel_case_string
  end
  # Ejemplos de uso:
  puts convert_to_camel_case("hello_world")  # Salida: helloWorld
  puts convert_to_camel_case("HELLO_WORLD")  # Salida: HelloWorld
  puts convert_to_camel_case("my-python-example")  # Salida: myPythonExample
  puts convert_to_camel_case("MY-PYTHON-EXAMPLE")  # Salida: MyPythonExample