class CreateEstados < ActiveRecord::Migration[7.0]
  def change
    create_table :estados do |t|
      t.text :descricao

      t.timestamps
    end
  end
end
