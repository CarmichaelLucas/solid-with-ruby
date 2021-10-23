# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../src/item'

# Teste Item
class ItemTest < Minitest::Test
  def setup
    @item = Item.new
  end

  def test_that_description_is_a_type_the_string
    assert_equal String, @item.descricao.class
  end

  def test_that_value_is_a_type_the_float
    assert_equal Float, @item.valor.class
  end

  def test_description_is_not_empty
    @item.descricao = 'teste'

    assert @item.description_is_not_empty
  end

  def test_description_is_empty
    @item.descricao = ''

    refute @item.description_is_not_empty
  end

  def test_value_is_not_less_than_or_equal_to_zero
    @item.valor = 10

    assert @item.value_is_not_less_than_or_equal_to_zero
  end

  def test_value_is_less_than_or_equal_to_zero
    @item.valor = 0

    refute @item.value_is_not_less_than_or_equal_to_zero
  end
end
