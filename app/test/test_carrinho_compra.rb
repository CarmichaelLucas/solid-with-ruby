# frozen_string_literal: true

require 'faker'
require 'minitest/autorun'
require_relative '../src/carrinho_compra'

# Teste Carrinho
class CarrinhoCompraTest < Minitest::Test
  def setup
    @item = Item.new
    @item.descricao = Faker::Commerce.product_name
    @item.valor = Faker::Commerce.price
  end

  def test_that_item_is_a_type_the_array
    carrinho = CarrinhoCompra.new
    assert_kind_of Array, carrinho.itens
  end

  def test_that_item_is_empty
    carrinho = CarrinhoCompra.new
    assert_empty carrinho.itens
  end

  def test_adicionar_item_with_success
    carrinho = CarrinhoCompra.new
    carrinho.adicionar_item(@item)

    assert_equal @item, carrinho.itens.first
  end

  def test_adicionar_item_without_success
    assert_raises 'Parâmetro item invalido' do
      carrinho = CarrinhoCompra.new
      carrinho.adicionar_item('Item')
    end
  end

  def test_validar_carrinho_vazio
    carrinho = CarrinhoCompra.new
    assert carrinho.validar_carrinho_vazio
  end

  def test_validar_carrinho_cheio
    carrinho = CarrinhoCompra.new
    carrinho.adicionar_item(@item)
    refute carrinho.validar_carrinho_vazio
  end
end
