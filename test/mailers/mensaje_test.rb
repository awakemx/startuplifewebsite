require 'test_helper'

class MensajeTest < ActionMailer::TestCase
  test "registro" do
    mail = Mensaje.registro
    assert_equal "Registro", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
