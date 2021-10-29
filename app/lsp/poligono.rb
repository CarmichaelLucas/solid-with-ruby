# frozen_string_literal: true

# Classe Poligono
class Poligono
  attr_accessor :forma

  def initialize(obj)
    @forma = obj
  end

  def calcular_area
    @forma.largura * @forma.altura
  end
end
