# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../src/email_service'

class EmailTest < Minitest::Test
  def setup
    @email = EmailService.new
  end

  def test_email_confirmacao_pedido
    assert_equal '... Envia E-mail de Confirmação de Pedido ...', @email.enviar_email_confirmacao_pedido
  end
end
