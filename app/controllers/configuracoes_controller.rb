class ConfiguracoesController < ApplicationController

  def edit
    @configuracoes = YAML.load_file(File.join(Rails.root, 'config/controle_suino.yml'))
  end

  def update
    File.open(File.join(Rails.root, 'config/controle_suino.yml'),'w') do |h| 
      h.write configuracoes_params.to_yaml
    end
    redirect_to configuracoes_path, notice: 'Configurações salvas com sucesso.'
  end

  private

  def configuracoes_params
    params.permit(:dias_previsao_parto, :dias_apartar, :dias_retorno_cio)
  end
end
