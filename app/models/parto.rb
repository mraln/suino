class Parto < ActiveRecord::Base
  belongs_to :matriz
  belongs_to :reprodutor

  before_save do |parto|
    parto.previsao_parto = parto.cobertura + Configuracao.get(:dias_previsao_parto).to_i.days
    parto.total_desmamado = parto.qtde_filhos - parto.mortalidade
    parto.data_desmame = parto.data_parto + Configuracao.get(:dias_apartar).to_i.days
    parto.retorno_cio = parto.data_desmame + Configuracao.get(:dias_retorno_cio).to_i.days
  end
end
