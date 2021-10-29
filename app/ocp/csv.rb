# frozen_string_literal: true

require 'csv'
require_relative 'arquivo'

# Extrai info CSV
class Csv < Arquivo
  def ler_arquivo(leitor)
    file_csv = CSV.read(leitor.reading_the_file_path, encoding: 'ISO8859-1:utf-8')

    file_csv.each do |line|
      estrutura = line[0].split(';')

      add_dados({
                  name: estrutura[0],
                  documento: estrutura[1].scan(/\d/).join,
                  email: estrutura[2]
                })
    end
  end
end
