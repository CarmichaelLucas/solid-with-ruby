# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../src/pedido'

# Teste Pedido
class PedidoTest < Minitest::Test
  def setup
    @pedido = Pedido.new
  end

  def test_that_carrinho_is_a_type_carrinho_compra
    assert_kind_of CarrinhoCompra, @pedido.carrinho
  end

  def test_that_status_is_a_type_string
    assert_kind_of String, @pedido.status
  end

  def test_that_value_order_is_a_type_float
    assert_kind_of Float, @pedido.valor_pedido
  end

  def test_confirmar_pedido_with_success
    carrinho = MiniTest::Mock.new
    carrinho.expect :validar_carrinho_vazio, false

    CarrinhoCompra.stub :new, carrinho do
      pedido_stub = Pedido.new
      pedido_stub.confirmar_pedido
      assert_equal 'Confirmado', pedido_stub.status
    end
  end

  def test_confirmar_pedido_without_success
    carrinho = MiniTest::Mock.new
    carrinho.expect :validar_carrinho_vazio, true

    CarrinhoCompra.stub :new, carrinho do
      pedido_stub = Pedido.new
      pedido_stub.confirmar_pedido
      assert_equal 'Aberto', pedido_stub.status
    end
  end
end
