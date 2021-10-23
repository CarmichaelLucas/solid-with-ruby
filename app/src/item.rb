# frozen_string_literal: true

# Item
class Item
  attr_accessor :descricao, :valor

  def initialize
    @descricao = ''
    @valor = 0.0
  end

  def description_is_not_empty
    return false if @descricao.empty?

    true
  end

  def value_is_not_less_than_or_equal_to_zero
    return false if @valor <= 0

    true
  end
end
