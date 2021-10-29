# frozen_string_literal: true

# Classe Retangulo
class Retangulo
  attr_accessor :altura, :largura

  def add_valores_altura_e_largura(params)
    @altura = params[:altura]
    @largura = params[:largura]
  end
end
