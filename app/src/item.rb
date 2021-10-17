# frozen_string_literal: true

# Item
class Item
  attr_accessor :descricao, :valor

  def initialize
    @descricao = ''
    @valor = 0.0
  end
end
