class CreatePartos < ActiveRecord::Migration
  def change
    create_table :partos do |t|
      t.references :matriz, index: true
      t.references :reprodutor, index: true
      t.date :cobertura
      t.date :previsao_parto
      t.date :data_parto
      t.integer :qtde_filhos
      t.integer :mortalidade
      t.integer :total_desmamado
      t.date :data_desmame
      t.date :retorno_cio

      t.timestamps
    end
  end
end
