# frozen_string_literal: true

require_relative 'carrinho_compra'

# Pedido
class Pedido
  attr_accessor :carrinho, :status, :valor_pedido

  def initialize
    @carrinho = CarrinhoCompra.new
    @status = 'Aberto'
    @valor_pedido = 0.0
  end

  def confirmar_pedido
    return false if carrinho.validar_carrinho_vazio

    @status = 'Confirmado'
    true
  end
end
