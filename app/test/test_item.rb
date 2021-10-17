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
end
