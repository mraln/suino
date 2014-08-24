class CreateReprodutores < ActiveRecord::Migration
  def change
    create_table :reprodutores do |t|
      t.string :numid, index: true
      t.string :nome
      t.string :raca

      t.timestamps
    end
  end
end
