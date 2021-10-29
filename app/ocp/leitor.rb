# frozen_string_literal: true

# Classe Leitor
class Leitor
  attr_accessor :file, :path

  def initialize(params)
    @file = params[:file]
    @path = params[:path]
  end

  def reading_the_file_path
    "#{@path}/#{@file}"
  end
end
