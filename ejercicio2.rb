module Formula
  def perimetro
    l = lados
    "El perimetro del #{self.class.name} es: #{l.inject(:+) * 2}"
  end

  def area
    l = lados
    "El area de #{self.class.name} es: #{l[0] * l[1]}"
  end

  def lados
    if self.class.name == 'Rectangulo'
      puts "#Medidas: #{@base}, #{@altura}"
      [@base, @altura]
    else
      puts "Medida: #{@lado}"
      [@lado, @lado]
    end
  end
end

class Rectangulo
  include Formula
  def initialize(base, altura)
    @base = base
    @altura = altura
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
    @lado = lado
  end
end

cuadrado = Cuadrado.new(5)
puts cuadrado.perimetro
puts cuadrado.area

rectangulo = Rectangulo.new(3, 5)
puts rectangulo.perimetro
puts rectangulo.area
