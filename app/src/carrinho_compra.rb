# frozen_string_literal: true

require_relative 'item'

# Carrinho de Compra
class CarrinhoCompra
  attr_accessor :itens

  def initialize
    @itens = []
  end

  def adiciona_item(item)
    raise ParameterItemError, 'Parâmetro item invalido' unless item.is_a?(Item)

    @itens.push(item)
    true
  end

  def validar_carrinho_vazio
    @itens.size.zero?
  end
end
