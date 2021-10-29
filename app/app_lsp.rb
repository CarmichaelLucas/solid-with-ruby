# frozen_string_literal: true

require_relative './lsp/poligonos/retangulo'
require_relative './lsp/poligonos/quadrado'
require_relative './lsp/poligono'

# Retangulo
retangulo = Poligono.new(Retangulo.new)
retangulo.forma.add_valores_altura_e_largura({
                                               altura: 10,
                                               largura: 5
                                             })
puts "Retangulo area: #{retangulo.calcular_area}"

puts ''
# Quadrando
quadrado = Poligono.new(Quadrado.new)
quadrado.forma.add_valores_altura_e_largura({
                                              altura_largura: 5
                                            })
puts "Quadrado area: #{quadrado.calcular_area}"
