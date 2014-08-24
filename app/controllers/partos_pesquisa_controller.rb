class PartosPesquisaController < ApplicationController
  def index
    conditions = []
    values = []
    if params[:matriz].present?
      conditions << "matriz_id = ?"
      values << params[:matriz].to_i
    end
    if params[:reprodutor].present?
      conditions << "reprodutor_id = ?"
      values << params[:reprodutor]
    end
    if params[:cobertura_inicio].present?
      conditions << "cobertura >= ?"
      values << params[:cobertura_inicio]
    end
    if params[:cobertura_fim].present?
      conditions << "cobertura <= ?"
      values << params[:cobertura_fim]
    end
    if params[:previsao_parto_inicio].present?
      conditions << "previsao_parto >= ?"
      values << params[:previsao_parto_inicio]
    end
    if params[:previsao_parto_fim].present?
      conditions << "previsao_parto <= ?"
      values << params[:previsao_parto_fim]
    end
    if params[:data_parto_inicio].present?
      conditions << "data_parto >= ?"
      values << params[:data_parto_inicio]
    end
    if params[:data_parto_fim].present?
      conditions << "data_parto <= ?"
      values << params[:data_parto_fim]
    end
    if params[:data_desmame_inicio].present?
      conditions << "data_desmame >= ?"
      values << params[:data_desmame_inicio]
    end
    if params[:data_desmame_fim].present?
      conditions << "data_desmame <= ?"
      values << params[:data_desmame_fim]
    end
    if params[:retorno_cio_inicio].present?
      conditions << "retorno_cio >= ?"
      values << params[:retorno_cio_inicio]
    end
    if params[:retorno_cio_fim].present?
      conditions << "retorno_cio <= ?"
      values << params[:retorno_cio_fim]
    end
    @partos = Parto.where(conditions.join(' and '), *values)
  end
end