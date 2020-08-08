class AcessoPage
    include PageObject
    require 'spec_helper'

  # ############################################################################################################
  text_field :usuario, id: 'userName'
  text_field :senha, id: 'password'
  button :botao_submit, name: 'btnSignin'
  # ############################################################################################################

  def realizar_acesso     
      self.usuario = "cristian"
      self.senha = "umdoistres"
      botao_submit
  end

  def validar_acesso
    site_esperado = "file:///Home/CheckLogin?returnur1=%2FHome%2FAutomacao"
    site_atual = @browser.current_url

    if site_atual == site_esperado
      puts '###############################################################################'
      puts "Acesso OK"
      puts '###############################################################################'
    else
      puts '###############################################################################'
      puts "Falha no acesso"
      puts '###############################################################################'
    end
  end
end