module Formula
  def perimetro
    l = arr
    "El perimetro del #{self.class.name} es: #{(l[0] + l[1]) * 2}"
  end

  def area
    l = arr
    "El area de #{self.class.name} es: #{l[0] * l[1]}"
  end

  def arr
    self.class.name == 'Rectangulo' ? [@base, @altura] : [@lado, @lado]
  end
end

class Rectangulo
  include Formula
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
    puts "Lados: #{@base}, #{@altura}"
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
    @lado = lado
  end

  def lados
    puts "Lado: #{@lado}"
  end
end

cuadrado = Cuadrado.new(5)
cuadrado.lados
puts cuadrado.perimetro
puts cuadrado.area
puts '-------------------------------------'
rectangulo = Rectangulo.new(3, 5)
rectangulo.lados
puts rectangulo.perimetro
puts rectangulo.area
