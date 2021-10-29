# frozen_string_literal: true

require_relative 'arquivo'

# Extrai info de TXT
class Txt < Arquivo
  def ler_arquivo(leitor)
    File.open(leitor.reading_the_file_path, 'r') do |file|
      while line = file.gets
        add_dados({
                    name: line[11, 30].strip,
                    documento: line[0, 11],
                    email: line[41, 50].gsub("\r\n", '')
                  })
      end
    end
  end
end
