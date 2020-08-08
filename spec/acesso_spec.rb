Bundler.require :default
require 'spec_helper'
require 'require_all'
require_all 'pages'

describe 'Teste Aceitação', :login_basico do
  context 'Acesso' do
    it 'Teste Acesso 1' do
      visit('LoginPage')
      on AcessoPage do |login|
        login.realizar_acesso
        login.validar_acesso
      end
    end
  end
end