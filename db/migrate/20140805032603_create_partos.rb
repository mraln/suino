class CreatePartos < ActiveRecord::Migration
  def change
    create_table :partos do |t|
      t.references :matriz, index: true
      t.references :reprodutor, index: true
      t.datetime :cobertura
      t.datetime :previsao_parto
      t.datetime :data_parto
      t.integer :qtde_filhos
      t.integer :mortalidade
      t.integer :total_desmamado
      t.datetime :data_desmame
      t.datetime :retorno_cio

      t.timestamps
    end
  end
end
