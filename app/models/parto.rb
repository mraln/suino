class Parto < ActiveRecord::Base
  belongs_to :matriz
  belongs_to :reprodutor

  before_save do |parto|
    parto.previsao_parto ||= parto.cobertura + Configuracao.get(:dias_previsao_parto).to_i.days if parto.cobertura.present?
    parto.total_desmamado = parto.qtde_filhos.to_i - parto.mortalidade.to_i
    parto.data_desmame ||= parto.data_parto + Configuracao.get(:dias_apartar).to_i.days if parto.data_parto.present?
    parto.retorno_cio ||= parto.data_desmame + Configuracao.get(:dias_retorno_cio).to_i.days if parto.data_desmame.present?
  end

  scope :no_periodo, ->(params) { where("previsao_parto between ? and ?", params[:data_inicial], params[:data_final]) }
end