# frozen_string_literal: true

require_relative 'src/pedido'
require_relative 'src/email_service'

require 'byebug'

pedido = Pedido.new

# Adicionando Items
item1 = Item.new
item1.descricao = 'Fogão'
item1.valor = 500.35

item2 = Item.new
item2.descricao = 'Geladeira'
item2.valor = 3422.77

# Criando Pedido
pedido.carrinho.adiciona_item(item1)
pedido.carrinho.adiciona_item(item2)

# Exibe pedido
puts pedido.inspect

# Exibe carrinho
puts ''
puts pedido.carrinho.inspect

# Valor pedido
total = 0.0
valores = pedido.carrinho.itens.map(&:valor)
total = valores.reduce { |soma, prox_valor| soma += prox_valor }
puts ''
puts "Valor Pedido: #{total}"

# Status pedido
puts ''
puts "Status: #{pedido.status}"

# Confirmar pedido
pedido.confirmar_pedido
puts ''
puts "Status: #{pedido.status}"

# Envio de Email
puts ''
puts EmailService.new.enviar_email_confirmacao_pedido if pedido.status.eql?('Confirmado')
