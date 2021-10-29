require_relative './ocp/leitor'
require_relative './ocp/csv'
require_relative './ocp/txt'

### Arquivos CSV

params = {
  file: "dados.csv",
  path: "#{ENV['PWD']}/ocp/files"
}

leitor1 = Leitor.new(params)
arquivo1 = Csv.new
arquivo1.ler_arquivo(leitor1)
puts arquivo1.dados


puts ''
### Arquivos TXT
params = {
  file: "dados.txt",
  path: "#{ENV['PWD']}/ocp/files"
}

leitor2 = Leitor.new(params)
arquivo2 = Txt.new
arquivo2.ler_arquivo(leitor2)
puts arquivo2.dados