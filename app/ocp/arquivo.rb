# frozen_string_literal: true

# Classe Arquivo
class Arquivo
  attr_accessor :dados

  def initialize
    @dados = []
  end

  def add_dados(params)
    @dados.push(params)
  end
end
