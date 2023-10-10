require 'spec_helper'
require 'validate_cpf'

describe 'Validador CPF' do
  it '1: deve validar o cpf informado' do
    expect(valida(64685674372)).to eq(true)
  end
end